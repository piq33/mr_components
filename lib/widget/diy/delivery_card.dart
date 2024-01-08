import 'package:components/model/diy_models.dart';
import 'package:components/theme/diy_theme.dart';
import 'package:components/theme/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

class DeliveryCard extends StatelessWidget {
  const DeliveryCard({this.margin, required this.history, super.key});

  final EdgeInsets? margin;
  final PrintHistoryModel history;

  static final _dateFormat = DateFormat('yyyy-MM-dd HH:mm', Intl.systemLocale);

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final diyTheme = Theme.of(context).extension<DiyTheme>();
    return Container(
      margin: margin,
      padding: REdgeInsets.symmetric(horizontal: 14, vertical: 17),
      decoration: BoxDecoration(
        color: mainTheme?.cardBoxBackground,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: mainTheme?.cardBoxShadow ?? Colors.transparent,
            blurRadius: 12,
            offset: const Offset(0, 1),
          )
        ],
      ),
      child: Column(
        children: [
          _DeliveryRow(
            title: '发货状态',
            label: history.isSend ? '已发货' : '待发货',
            labelColor: diyTheme?.deliveryTextColor,
          ),
          SizedBox(height: 6.h),
          _DeliveryRow(title: '订单编号', label: history.billNo ?? ''),
          SizedBox(height: 6.h),
          _DeliveryRow(title: '支付金额', label: history.price.toStringAsFixed(2)),
          SizedBox(height: 6.h),
          _DeliveryRow(
            title: '支付时间',
            label: history.createTime != null
                ? _dateFormat.format(history.createTime!)
                : '',
          ),
          if (history.deliveryType == DeliveryType.express)
            Container(
              margin: REdgeInsets.only(top: 6),
              child: _DeliveryRow(
                title: '快递单号',
                label: (history.trackingNumber?.isNotEmpty ?? false)
                    ? history.trackingNumber!
                    : '待发货',
                copy: history.trackingNumber?.isNotEmpty ?? false,
              ),
            ),
          if (history.deliveryType == DeliveryType.express)
            Container(
              margin: REdgeInsets.only(top: 6),
              child: _DeliveryRow(
                title: '快递时间',
                label: history.sendTime != null
                    ? _dateFormat.format(history.sendTime!)
                    : '待发货',
              ),
            ),
        ],
      ),
    );
  }
}

class _DeliveryRow extends StatelessWidget {
  const _DeliveryRow({
    required this.title,
    required this.label,
    this.labelColor,
    this.copy = false,
  });

  final String title;
  final String label;
  final Color? labelColor;
  final bool copy;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            color: mainTheme?.titleColor,
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        copy
            ? TextButton(
                onPressed: () {
                  if (label.isEmpty) return;
                  Clipboard.setData(ClipboardData(text: label));
                  Fluttertoast.showToast(msg: '已复制');
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      label,
                      style: TextStyle(
                        color: labelColor ?? mainTheme?.subTextColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 6.w),
                    Container(
                      padding: REdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 3,
                      ),
                      decoration: ShapeDecoration(
                        color: mainTheme?.cardBoxBorderColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2.r),
                        ),
                      ),
                      child: Text(
                        '复制',
                        style: TextStyle(
                          color: mainTheme?.subTextColor,
                          fontSize: 8,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : Text(
                label,
                style: TextStyle(
                  color: labelColor ?? mainTheme?.subTextColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
      ],
    );
  }
}
