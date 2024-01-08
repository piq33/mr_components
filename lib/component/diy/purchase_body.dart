import 'package:components/model/common_model.dart';
import 'package:components/model/diy_models.dart';
import 'package:components/theme/diy_theme.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/widget/diy/gallery_card.dart';
import 'package:components/widget/diy/purchase_info_card.dart';
import 'package:components/widget/diy/purchase_notice_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

typedef OnDeliveryTypeChanged = void Function(DeliveryType type);

class PurchaseBody extends StatefulWidget {
  const PurchaseBody({
    required this.printSupport,
    this.history,
    required this.receiverController,
    required this.phoneController,
    required this.addressController,
    this.onRegionChanged,
    this.onDeliveryTypeChanged,
    super.key,
  });

  final PrintSupport printSupport;
  final TemplateDetailModel? history;
  final TextEditingController receiverController;
  final TextEditingController phoneController;
  final TextEditingController addressController;
  final OnRegionChanged? onRegionChanged;
  final OnDeliveryTypeChanged? onDeliveryTypeChanged;

  @override
  State<PurchaseBody> createState() => _PurchaseBodyState();
}

class _PurchaseBodyState extends State<PurchaseBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  var _deliveryType = DeliveryType.selection;
  SelectedRegion? _selectedRegion;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _animation = Tween(begin: 45.h, end: 170.h).animate(_animationController);
    WidgetsBinding.instance
        .addPostFrameCallback((timeStamp) => _setupDeliveryType());
  }

  @override
  void didUpdateWidget(covariant PurchaseBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    WidgetsBinding.instance
        .addPostFrameCallback((timeStamp) => _setupDeliveryType());
  }

  void _setupDeliveryType() {
    final deliveryType = widget.history?.deliveryType ?? DeliveryType.express;
    _deliveryType = deliveryType;
    // 根据printSupport修正最终显示的选项
    if (widget.printSupport == PrintSupport.self) {
      _deliveryType = DeliveryType.self;
    } else if (widget.printSupport == PrintSupport.express) {
      _deliveryType = DeliveryType.express;
    }
    widget.onDeliveryTypeChanged?.call(_deliveryType);
    if (_deliveryType == DeliveryType.express) _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final history = widget.history;
    final createDate = history?.createTime;
    return Column(
      children: [
        GalleryCard(
          cover: history?.cover,
          title: history?.title,
          price: history?.price ?? 0,
          createDate: createDate,
        ),
        AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Container(
              height: _animation.value,
              margin: REdgeInsets.symmetric(horizontal: 25),
              padding: REdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: mainTheme?.cardBoxBackground,
                borderRadius: BorderRadius.circular(9.r),
              ),
              clipBehavior: Clip.hardEdge,
              child: Column(
                children: [
                  _typeRadioRow(context, _deliveryType),
                  if (_animation.isCompleted)
                    PurchaseInfoCard(
                      selectedRegion: _selectedRegion,
                      receiverController: widget.receiverController,
                      phoneController: widget.phoneController,
                      addressController: widget.addressController,
                      onRegionChanged: (region) {
                        setState(() => _selectedRegion = region);
                        widget.onRegionChanged?.call(region);
                      },
                    ),
                ],
              ),
            );
          },
        ),
        SizedBox(height: 50.h),
        PurchaseNoticeCard(payNotice: history?.payNotice ?? ''),
        SizedBox(height: 145.h),
      ],
    );
  }

  Widget _typeRadioRow(BuildContext context, DeliveryType type) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final diyTheme = Theme.of(context).extension<DiyTheme>();
    return Container(
      height: 45.h,
      padding: REdgeInsets.symmetric(horizontal: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '邮寄方式',
            style: TextStyle(
              color: mainTheme?.textColor,
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(width: 25.w),
          if (widget.printSupport == PrintSupport.both ||
              widget.printSupport == PrintSupport.self)
            TextButton(
              onPressed: () {
                _deliveryType = DeliveryType.self;
                _animationController.reverse();
                widget.onDeliveryTypeChanged?.call(_deliveryType);
              },
              style: TextButton.styleFrom(
                padding: REdgeInsets.symmetric(horizontal: 8, vertical: 4),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Theme(
                    data: ThemeData(
                      unselectedWidgetColor: diyTheme?.contractBorderColor,
                    ),
                    child: Transform.scale(
                      scale: 0.8,
                      child: Radio(
                        value: DeliveryType.self,
                        groupValue: type,
                        visualDensity: const VisualDensity(
                          horizontal: VisualDensity.minimumDensity,
                          vertical: VisualDensity.minimumDensity,
                        ),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        onChanged: (value) {
                          _deliveryType = DeliveryType.self;
                          _animationController.reverse();
                          widget.onDeliveryTypeChanged?.call(_deliveryType);
                        },
                      ),
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    '自提',
                    style: TextStyle(
                      color: mainTheme?.titleColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
          SizedBox(width: 40.w),
          if (widget.printSupport == PrintSupport.both ||
              widget.printSupport == PrintSupport.express)
            TextButton(
              onPressed: () {
                _deliveryType = DeliveryType.express;
                _animationController.forward();
                widget.onDeliveryTypeChanged?.call(_deliveryType);
              },
              style: TextButton.styleFrom(
                padding: REdgeInsets.symmetric(horizontal: 8, vertical: 4),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Theme(
                    data: ThemeData(
                      unselectedWidgetColor: diyTheme?.contractBorderColor,
                    ),
                    child: Transform.scale(
                      scale: 0.8,
                      child: Radio(
                        value: DeliveryType.express,
                        groupValue: type,
                        visualDensity: const VisualDensity(
                          horizontal: VisualDensity.minimumDensity,
                          vertical: VisualDensity.minimumDensity,
                        ),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        onChanged: (value) {
                          _deliveryType = DeliveryType.express;
                          _animationController.forward();
                          widget.onDeliveryTypeChanged?.call(_deliveryType);
                        },
                      ),
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    '邮寄',
                    style: TextStyle(
                      color: mainTheme?.titleColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
