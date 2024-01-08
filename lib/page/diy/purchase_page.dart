import 'dart:async';

import 'package:bsl/component/diy/purchase_body.dart';
import 'package:bsl/log/global_log.dart';
import 'package:bsl/management/services/repository_service.dart';
import 'package:bsl/model/common_model.dart';
import 'package:bsl/model/diy_models.dart';
import 'package:bsl/theme/diy_theme.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/util/reg_utils.dart';
import 'package:bsl/widget/common/button.dart';
import 'package:bsl/widget/common/default_appbar.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:msh_checkbox/msh_checkbox.dart';

class PurchasePage extends StatefulWidget {
  const PurchasePage({
    required this.studentAlbumId,
    required this.printSupport,
    super.key,
  });

  final String studentAlbumId;
  final PrintSupport printSupport;

  @override
  State createState() => _PurchasePageState();
}

class _PurchasePageState extends State<PurchasePage> {
  final _repository = Get.find<RepositoryService>().diyRepository;

  final _receiverController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressController = TextEditingController();

  StreamSubscription? _subscription;
  CancelToken? _cancelToken;

  final _agreementController = StreamController<bool>();
  TemplateDetailModel? _detail;
  var _agreement = false;
  var _delivery = DeliveryType.express;
  SelectedRegion? _region;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => _fetchDetail());
  }

  @override
  void didUpdateWidget(covariant PurchasePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.studentAlbumId == widget.studentAlbumId) return;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => _fetchDetail());
  }

  void _fetchDetail() async {
    try {
      _cancelToken = CancelToken();
      final r = await _repository.fetchTemplateDetail(
        widget.studentAlbumId,
        _cancelToken,
      );
      if (r.success) setState(() => _detail = r.data);
    } catch (e, stackTrace) {
      logError('获取相册支付详情异常: ${e.toString()}', e, stackTrace);
    }
  }

  void _submit() async {
    final delivery = _delivery;
    if (delivery == DeliveryType.self) {
      try {
        SmartDialog.showLoading(msg: '正在提交...');
        _cancelToken = CancelToken();
        final r = await _repository.printDiySelf(
          studentAlbumId: widget.studentAlbumId,
          cancelToken: _cancelToken,
        );
        if (r.success) {
          Fluttertoast.showToast(msg: '订单提交成功');
          Get.back();
          return;
        }
      } catch (e, stackTrace) {
        logError('提交订单异常: ${e.toString()}', e, stackTrace);
      } finally {
        SmartDialog.dismiss();
      }
    }

    final receiver = _receiverController.text;
    final phone = _phoneController.text;
    final address = _addressController.text;
    final region = _region;
    if (receiver.isEmpty) {
      Fluttertoast.showToast(msg: '请输入收货人姓名');
      return;
    }
    if (phone.isEmpty || !phone.phoneNumber()) {
      Fluttertoast.showToast(msg: '请输入合法的手机号');
      return;
    }
    if (region == null || address.isEmpty) {
      Fluttertoast.showToast(msg: '请输入收货人地址');
      return;
    }

    try {
      SmartDialog.showLoading(msg: '正在提交...');
      _cancelToken = CancelToken();
      final r = await _repository.printDiyExpress(
        consignee: receiver,
        mobile: phone,
        region: region,
        address: address,
        studentAlbumId: widget.studentAlbumId,
        cancelToken: _cancelToken,
      );
      if (r.success) {
        Fluttertoast.showToast(msg: '订单提交成功');
        Get.back();
        return;
      }
    } catch (e, stackTrace) {
      logError('提交订单异常: ${e.toString()}', e, stackTrace);
    } finally {
      SmartDialog.dismiss();
    }
  }

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final diyTheme = Theme.of(context).extension<DiyTheme>();
    return Scaffold(
      appBar: defaultAppBar(context: context, title: '支付详情'),
      resizeToAvoidBottomInset: false,
      bottomSheet: Container(
        height: 125.h,
        padding: REdgeInsets.only(left: 18, right: 18, bottom: 8),
        decoration: BoxDecoration(
          color: mainTheme?.bottomSheetBackground,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(14.r),
            topRight: Radius.circular(14.r),
          ),
          boxShadow: [
            BoxShadow(
              color: mainTheme?.cardBoxShadow ?? Colors.transparent,
              blurRadius: 16,
              offset: const Offset(0, -19),
            ),
          ],
        ),
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                _agreement = !_agreement;
                _agreementController.sink.add(_agreement);
              },
              style: TextButton.styleFrom(
                padding: REdgeInsets.symmetric(vertical: 8),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  StreamBuilder(
                    stream: _agreementController.stream,
                    builder: (context, snapshot) {
                      final value = snapshot.data ?? false;
                      return MSHCheckbox(
                        size: 14.r,
                        colorConfig: MSHColorConfig(
                          borderColor: (state) =>
                              diyTheme?.contractBorderColor ??
                              Colors.transparent,
                          checkColor: (state) =>
                              diyTheme?.contractCheckColor ??
                              Colors.transparent,
                        ),
                        value: value,
                        style: MSHCheckboxStyle.fillFade,
                        onChanged: (value) {
                          _agreement = value;
                          _agreementController.sink.add(value);
                        },
                      );
                    },
                  ),
                  SizedBox(width: 18.w),
                  Text(
                    '我已仔细阅读购买须知',
                    style: TextStyle(
                      color: mainTheme?.titleColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: diyTheme?.priceColor,
                      fontWeight: FontWeight.w600,
                    ),
                    children: [
                      TextSpan(
                        text: '¥ ',
                        style: TextStyle(fontSize: 18.sp),
                      ),
                      TextSpan(
                        text: _detail?.price.toStringAsFixed(2),
                        style: TextStyle(fontSize: 24.sp),
                      ),
                    ],
                  ),
                ),
                DefaultButton(
                  width: 220.w,
                  height: 40.h,
                  onTap: () {
                    if (!_agreement) {
                      Fluttertoast.showToast(msg: '请先阅读购买须知');
                      return;
                    }
                    _submit();
                  },
                  child: Center(
                    child: Text(
                      '立即支付',
                      style: TextStyle(
                        color: mainTheme?.mainButtonTextColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: PurchaseBody(
          printSupport: widget.printSupport,
          history: _detail,
          receiverController: _receiverController,
          phoneController: _phoneController,
          addressController: _addressController,
          onRegionChanged: (region) => _region = region,
          onDeliveryTypeChanged: (type) => _delivery = type,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _subscription?.cancel();
    _receiverController.dispose();
    _phoneController.dispose();
    _addressController.dispose();
    _agreementController.close();
    super.dispose();
  }
}
