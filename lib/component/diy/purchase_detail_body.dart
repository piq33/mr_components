import 'package:components/log/global_log.dart';
import 'package:components/management/services/repository_service.dart';
import 'package:components/model/common_model.dart';
import 'package:components/model/diy_models.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/util/reg_utils.dart';
import 'package:components/widget/common/button.dart';
import 'package:components/widget/diy/delivery_card.dart';
import 'package:components/widget/diy/gallery_card.dart';
import 'package:components/widget/diy/purchase_info_card.dart';
import 'package:components/widget/diy/purchase_notice_card.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class PurchaseDetailBody extends StatefulWidget {
  const PurchaseDetailBody({required this.buyId, super.key});

  final String buyId;

  @override
  State<PurchaseDetailBody> createState() => _PurchaseDetailBodyState();
}

class _PurchaseDetailBodyState extends State<PurchaseDetailBody> {
  final _repository = Get.find<RepositoryService>().diyRepository;

  final _receiverController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressController = TextEditingController();
  final _receiverFocusNode = FocusNode();

  CancelToken? _cancelToken;
  var _edit = false;
  PrintHistoryModel? _history;
  SelectedRegion? _selectedRegion;

  void _refresh() async {
    try {
      _cancelToken = CancelToken();
      final r = await _repository.fetchShipInfo(widget.buyId, _cancelToken);
      if (r.success) {
        PrintHistoryModel history = r.data;
        _receiverController.text = history.consignee;
        _phoneController.text = history.mobile;
        _addressController.text = history.address;
        _selectedRegion = SelectedRegion(
          province: RegionModel(name: history.province),
          city: RegionModel(name: history.city),
        );
        setState(() => _history = history);
      }
    } catch (e, stackTrace) {
      logError('获取订单详情异常: ${e.toString()}', e, stackTrace);
    }
  }

  void _submit() async {
    final receiver = _receiverController.text;
    final phone = _phoneController.text;
    final address = _addressController.text;
    final region = _selectedRegion;
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
      final r = await _repository.updateShipInfo(
        buyId: widget.buyId,
        consignee: receiver,
        mobile: phone,
        region: region,
        address: address,
        cancelToken: _cancelToken,
      );
      if (r.success) {
        Fluttertoast.showToast(msg: '订单提交成功');
        _refresh();
        return;
      }
    } catch (e, stackTrace) {
      logError('提交订单异常: ${e.toString()}', e, stackTrace);
    } finally {
      SmartDialog.dismiss();
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => _refresh());
  }

  @override
  void didUpdateWidget(covariant PurchaseDetailBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.buyId == widget.buyId) return;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => _refresh());
  }

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final history = _history;
    final self = history?.deliveryType == DeliveryType.self;
    List<Widget> buttons = history == null
        ? []
        : [
            // 未支付的订单显示支付按钮
            if (!history.isPaid)
              DefaultButton(
                width: 150.w,
                height: 40.h,
                onTap: () {
                  final billNo = history.billNo;
                  if (billNo == null || billNo.isEmpty) {
                    Fluttertoast.showToast(msg: '订单号为空');
                    return;
                  }
                  Get.toNamed(
                    'bill/detail',
                    parameters: {'page': '1', 'billCode': billNo},
                  );
                },
                child: Center(
                  child: Text(
                    '前往支付',
                    style: TextStyle(
                      color: mainTheme?.mainButtonTextColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            // 自提及已发货不再允许修改地址信息
            if (!self && !history.isSend)
              DefaultButton(
                width: 150.w,
                height: 40.h,
                onTap: () {
                  if (!_edit) {
                    _edit = true;
                    _receiverFocusNode.requestFocus();
                    setState(() {});
                    return;
                  }
                  FocusScope.of(context).requestFocus(FocusNode());
                  _submit();
                },
                child: Center(
                  child: Text(
                    _edit ? '保存' : '修改地址',
                    style: TextStyle(
                      color: mainTheme?.mainButtonTextColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
          ];
    if (buttons.length == 2) {
      buttons.insert(1, SizedBox(width: 40.w));
    }

    return AnimatedOpacity(
      opacity: history == null ? 0 : 1,
      duration: const Duration(milliseconds: 300),
      child: history == null
          ? const SizedBox()
          : Column(
              children: [
                GalleryCard(
                  cover: history.cover,
                  title: history.title,
                  price: history.price,
                  createDate: history.createTime,
                ),
                Container(
                  height: self ? 31.25.h : 156.25.h,
                  margin: REdgeInsets.symmetric(horizontal: 25),
                  padding: REdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: mainTheme?.cardBoxBackground,
                    borderRadius: BorderRadius.circular(9.r),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Column(
                    children: [
                      Container(
                        height: 31.25.h,
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
                            Text(
                              history.deliveryType.display,
                              style: TextStyle(
                                color: mainTheme?.titleColor,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (!self)
                        PurchaseInfoCard(
                          selectedRegion: _selectedRegion,
                          receiverFocusNode: _receiverFocusNode,
                          receiverController: _receiverController,
                          phoneController: _phoneController,
                          addressController: _addressController,
                          readOnly: !_edit,
                          onRegionChanged: (region) {
                            setState(() => _selectedRegion = region);
                          },
                        ),
                    ],
                  ),
                ),
                SizedBox(height: 50.h),
                PurchaseNoticeCard(payNotice: history.payNotice),
                SizedBox(height: 20.h),
                DeliveryCard(
                  margin: REdgeInsets.symmetric(horizontal: 17),
                  history: history,
                ),
                SizedBox(height: 40.h),
                buttons.length == 1
                    ? Center(child: buttons.first)
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: buttons,
                      ),
                SizedBox(height: 40.h),
              ],
            ),
    );
  }

  @override
  void dispose() {
    _cancelToken?.cancel('dispose');
    _receiverFocusNode.dispose();
    _receiverController.dispose();
    _phoneController.dispose();
    _addressController.dispose();
    super.dispose();
  }
}
