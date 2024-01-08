import 'package:components/management/mobx/diy/local_gallery_store.dart';
import 'package:components/widget/common/cache_image.dart';
import 'package:components/widget/common/list_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

class LocalGalleryBody extends StatefulWidget {
  const LocalGalleryBody({
    required this.maxCount,
    required this.store,
    super.key,
  });

  final int maxCount;
  final LocalGalleryStore store;

  @override
  State<LocalGalleryBody> createState() => _LocalGalleryBodyState();
}

const _pageSize = 50;

class _LocalGalleryBodyState extends State<LocalGalleryBody> {
  AssetPathEntity? _album;
  var _currentPage = 0;

  final _assets = List<AssetEntity>.empty(growable: true);
  var _refresh = true;
  var _loading = false;
  var _hasMore = true;

  Future<void> _loadAlbum() async {
    final albums = await PhotoManager.getAssetPathList(
      onlyAll: true,
      type: RequestType.image,
    );
    _album = albums.firstOrNull;
  }

  Future<void> _loadAsset() async {
    _loading = true;
    final album = _album;
    if (album == null) {
      setState(() {
        _refresh = false;
        _hasMore = false;
        _assets.clear();
      });
      _loading = false;
      return;
    }

    final assets = await album.getAssetListPaged(
      page: _currentPage,
      size: _pageSize,
    );
    setState(() {
      _currentPage++;
      _loading = false;
      _refresh = false;
      _hasMore = assets.length <= _pageSize;
      _assets.addAll(assets);
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) async => await _loadAlbum().then((value) => _loadAsset()),
    );
  }

  @override
  void didUpdateWidget(covariant LocalGalleryBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) async => await _loadAlbum().then((value) => _loadAsset()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      onNotification: (notification) {
        if (notification is ScrollEndNotification && !_loading && _hasMore) {
          _loadAsset();
        }
        return true;
      },
      child: _refresh
          ? const ListLoadingAnimation()
          : GridView.builder(
              padding: REdgeInsets.only(
                left: 15,
                top: 30,
                right: 15,
                bottom: 120,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 12.r,
                crossAxisSpacing: 12.r,
              ),
              itemBuilder: (context, index) {
                final asset = _assets[index];
                return Observer(
                  builder: (context) {
                    final selected = widget.store.data;
                    final selectedIndex = selected.indexOf(asset);
                    return _image(selectedIndex, asset);
                  },
                );
              },
              itemCount: _assets.length,
            ),
    );
  }

  Widget _image(int selectedIndex, AssetEntity asset) {
    final imageProvider = AssetEntityImageProvider(
      asset,
      isOriginal: false,
      thumbnailSize: defaultAssetGridPreviewSize,
    );
    return TextButton(
      onPressed: () {
        if (selectedIndex == -1 &&
            widget.store.data.length >= widget.maxCount) {
          Fluttertoast.showToast(msg: "最多能选择${widget.maxCount}张");
          return;
        }
        selectedIndex != -1
            ? widget.store.unselect(asset)
            : widget.store.select(asset);
        setState(() {});
      },
      child: LayoutBuilder(
        builder: (context, constraint) {
          return Stack(
            children: [
              RepaintBoundary(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14.r),
                  child: AssetEntityCacheImage(
                    width: constraint.maxWidth,
                    height: constraint.maxHeight,
                    provider: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              if (selectedIndex != -1)
                Container(
                  width: constraint.maxWidth,
                  height: constraint.maxHeight,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(14.r),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    (selectedIndex + 1).toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
