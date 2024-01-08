import 'dart:collection';

import 'package:bsl/model/common_model.dart';
import 'package:bsl/model/converter/gender_converter.dart';
import 'package:bsl/model/converter/string2bool_converter.dart';
import 'package:bsl/model/converter/string2double_converter.dart';
import 'package:bsl/model/converter/string2int_converter.dart';
import 'package:bsl/model/converter/timestamp_converter.dart';
import 'package:bsl/model/school_models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bill_model.freezed.dart';
part 'bill_model.g.dart';

enum BillStatus {
  @JsonValue('unknown')
  unknown('', ''),
  @JsonValue('')
  all('全部', ''),
  @JsonValue('10')
  billToBePaid('待出账单', '10'),
  @JsonValue('20')
  pendingTrial('待提审', '20'),
  @JsonValue('30')
  toBeReviewed('待审核', '30'),
  @JsonValue('40')
  toBeConfirmed('待确认', '40'),
  @JsonValue('50')
  toBePaid('待缴费', '50'),
  @JsonValue('60')
  partialPayment('部分已缴', '60'),
  @JsonValue('70')
  completed('已缴费', '70'),
  @JsonValue('80')
  overPay('已缴费' /* 满溢缴费 */, '80'),
  @JsonValue('90')
  freeze('冻结', '90'),
  @JsonValue('99')
  cancel('作废', '99');

  final String display;
  final String req;
  const BillStatus(this.display, this.req);
}

enum PaymentTypeCode {
  @JsonValue('')
  unknown(''),
  @JsonValue('OnlinePayment')
  onlinePayment('线上支付'),
  @JsonValue('BankTrans')
  bankTrans('线下转账'),
  @JsonValue('BankDeduction')
  bankDeduction('银行划扣');

  final String display;
  const PaymentTypeCode(this.display);
}

/// 支付订单状态
enum TradeStatus {
  @JsonValue('NEW')
  newBuilt('新建'),
  @JsonValue('WAIT')
  wait('待支付'),
  @JsonValue('ING')
  ing('处理中'),
  @JsonValue('SUCCESS')
  success('成功'),
  @JsonValue('FAIL')
  fail('失败'),
  @JsonValue('ERR')
  err('错误'),
  @JsonValue('INVALID')
  invalid('失效'),
  @JsonValue('CLOSE')
  close('关闭');

  final String display;
  const TradeStatus(this.display);
}

/// 账单筛选入参
@freezed
class BillFilterReq with _$BillFilterReq {
  const BillFilterReq._();
  const factory BillFilterReq({
    /// 学生编码
    required String studentCode,
  }) = _BillFilterReq;

  factory BillFilterReq.fromJson(Map<String, Object?> json) =>
      _$BillFilterReqFromJson(json);
}

/// 账单筛选条件
@freezed
class BillFilterModel with _$BillFilterModel {
  const BillFilterModel._();
  const factory BillFilterModel({
    /// 所选择园所
    FilterSchoolModel? selectedSchool,

    /// 所选择学年学期
    FilterYearTermModel? selectedYearTerm,
  }) = _BillFilterModel;

  factory BillFilterModel.fromJson(Map<String, Object?> json) =>
      _$BillFilterModelFromJson(json);
}

@freezed
class BillOtherParam with _$BillOtherParam {
  const BillOtherParam._();
  const factory BillOtherParam({
    /// 账单编号
    @Default('') String billStudentCode,
  }) = _BillOtherParam;

  factory BillOtherParam.fromJson(Map<String, Object?> json) =>
      _$BillOtherParamFromJson(json);
}

@freezed
class PrepareOrderReq with _$PrepareOrderReq {
  const PrepareOrderReq._();
  const factory PrepareOrderReq({
    /// 支付方式
    String? accountPaymentId,

    /// 账单编号
    String? billStudentCode,

    /// 缴费金额
    double? orderAmount,
  }) = _PrepareOrderReq;

  factory PrepareOrderReq.fromJson(Map<String, Object?> json) =>
      _$PrepareOrderReqFromJson(json);
}

@freezed
class BillReq with _$BillReq {
  const BillReq._();
  const factory BillReq({
    /// 学校编码
    String? schoolCode,

    /// 学年学期编码
    String? yearTermCode,

    /// 账单状态
    BillStatus? status,

    /// 学生编码
    required String studentCode,
  }) = _BillReq;

  factory BillReq.fromJson(Map<String, Object?> json) =>
      _$BillReqFromJson(json);
}

@freezed
class PrepareOrderModel with _$PrepareOrderModel {
  const PrepareOrderModel._();
  const factory PrepareOrderModel({
    /// 账号名
    @Default('') String accountName,

    /// 银行账号
    @Default('') String bankAccountNo,

    /// 银行编码
    @Default('') String bankCode,

    /// 银行名称
    @Default('') String bankName,

    /// 账单编号
    @Default('') String billStudentCode,

    /// 分支行名称
    @Default('') String branchBankName,

    /// 是否是线上交易
    @String2BoolJsonConverter() @Default(false) bool isOnline,

    /// 订单金额
    @String2DoubleJsonConverter() @Default(0) double orderAmount,

    /// 预下单会话id(拿这个ID跳转小程序)
    @JsonKey(name: 'orderSeessionId') @Default('') String orderSessionId,

    /// 付款方式编码
    @Default('') String paymentTypeCode,

    /// 付款方式名称
    @Default('') String paymentTypeNameCn,
  }) = _PrepareOrderModel;

  factory PrepareOrderModel.fromJson(Map<String, Object?> json) =>
      _$PrepareOrderModelFromJson(json);
}

@freezed
class BillModel with _$BillModel {
  const BillModel._();
  const factory BillModel({
    /// 学生主键
    @String2IntNullableJsonConverter() int? studentId,

    /// 学校编码
    @Default('') String schoolCode,

    /// 学校名称
    @Default('') String schoolName,

    /// 账单编号
    @JsonKey(name: 'billStudentCode') String? billCode,

    /// 学生编码
    @Default('') String studentCode,

    /// 学生姓名
    @Default('') String studentName,

    /// 学年学期编码
    @Default('') String yearTermCode,

    /// 学年学期
    @Default('') String yearTermName,

    /// 学年学期英文名称
    @Default('') String yearTermEngName,

    /// 学段编码
    @Default('') String phaseCode,

    /// 学段名称
    @Default('') String phaseName,

    /// 学段英文名称
    @Default('') String phaseEngName,

    /// 课程编码
    @Default('') String courseCode,

    /// 课程名称
    @Default('') String courseName,

    /// 课程英文名称
    @Default('') String courseEngName,

    /// 年级编码
    @Default('') String gradeCode,

    /// 年级名称
    @Default('') String gradeName,

    /// 年级英文名称
    @Default('') String gradeEngName,

    /// 班级编码
    @Default('') String classCode,

    /// 班级名称
    @Default('') String className,

    /// 班级英文名称
    @Default('') String classEngName,

    /// 应付(微信实际支付)
    @String2DoubleJsonConverter() @Default(0) double payAmount,

    /// 费用合计
    @String2DoubleJsonConverter() @Default(0) double totalCost,

    /// 优惠合计
    @String2DoubleJsonConverter() @Default(0) double benefitCost,

    /// 账单合计
    @String2DoubleJsonConverter() @Default(0) double billCost,

    /// 已缴合计
    @String2DoubleJsonConverter() @Default(0) double paidCost,

    /// 抵扣金额
    @String2DoubleJsonConverter() @Default(0) double walletCost,

    /// 特殊折扣
    @String2DoubleJsonConverter() @Default(0) double specialCost,

    /// 抵扣金额
    @String2DoubleJsonConverter() @Default(0) double deductionCost,

    /// 余额抵扣
    @String2DoubleJsonConverter() @Default(0) double balanceCost,

    /// 退款金额
    @String2DoubleJsonConverter() @Default(0) double refundCost,

    /// 学期应收金额
    @String2DoubleJsonConverter() @Default(0) double termPayableCost,

    /// 学期优惠金额
    @String2DoubleJsonConverter() @Default(0) double termBenefitCost,

    /// 欠缴金额
    @String2DoubleJsonConverter() @Default(0) double owePaidCost,

    /// 欠费金额
    @String2DoubleJsonConverter() @Default(0) double oweCost,

    /// 账单状态
    @Default(BillStatus.unknown) BillStatus status,

    /// 账单状态中文名称
    @Default('') String statusName,

    /// 账单状态英文名称
    @Default('') String statusEngName,

    /// 账单类别(需要对应字典)
    String? billCategory,

    /// 账单类别中文名称
    @Default('') String billCategoryName,

    /// 账单类别英文名称
    @Default('') String billCategoryEngName,

    /// 创建日期
    @StringTimestampNullableJsonConverter() DateTime? createdDate,

    /// 是否异常
    @String2BoolJsonConverter() @Default(false) bool isAbnormal,

    /// 是否预升账单
    @String2BoolJsonConverter() @Default(false) bool isPreUpdate,

    /// 是否关闭
    @String2BoolJsonConverter() @Default(false) bool isClosed,
  }) = _BillModel;

  factory BillModel.fromJson(Map<String, Object?> json) =>
      _$BillModelFromJson(json);
}

// 余额明细
@freezed
class BalanceDetailModel with _$BalanceDetailModel {
  const BalanceDetailModel._();
  const factory BalanceDetailModel({
    /// 科目名称
    @Default('') String subjectName,

    /// 抵扣金额
    @String2DoubleJsonConverter() @Default(0) double amount,
  }) = _BalanceDetailModel;

  factory BalanceDetailModel.fromJson(Map<String, Object?> json) =>
      _$BalanceDetailModelFromJson(json);
}

@freezed
class BillProjectModel with _$BillProjectModel {
  const BillProjectModel._();
  const factory BillProjectModel({
    /// 账单编号
    @JsonKey(name: 'studentBillCode') String? billCode,

    /// 收费类别编码
    @Default('') String chargingCategoryCode,

    /// 收费类别名称
    @Default('') String categoryNameCn,

    /// 收费类别英文名称
    @Default('') String categoryNameEn,

    /// 收费项目编码
    @Default('') String chargingProjectCode,

    /// 收费项目名称
    @Default('') String chargingProjectNameCn,

    /// 收费项目英文名称
    @Default('') String chargingProjectNameEn,

    /// 项目收费金额
    @String2DoubleJsonConverter() @Default(0) double feesCost,

    /// 优惠金额
    @String2DoubleJsonConverter() @Default(0) double benefitCost,

    /// 小计金额
    @String2DoubleJsonConverter() @Default(0) double totalCost,

    /// 应付金额
    @String2DoubleJsonConverter() @Default(0) double paidCost,

    /// 原应付金额
    @String2DoubleJsonConverter() @Default(0) double originalBenefitCost,

    /// 原优惠金额
    @String2DoubleJsonConverter() @Default(0) double originalPaidCost,

    /// 是否保底
    @String2BoolJsonConverter() @Default(false) bool isGuaranteed,

    /// 保底率
    @String2DoubleJsonConverter() @Default(0) double guaranteedRate,

    /// 差异金额
    @String2DoubleJsonConverter() @Default(0) double differenceCost,

    /// 抵扣金额
    @String2DoubleJsonConverter() @Default(0) double deductionCost,

    /// 余额金额
    @String2DoubleJsonConverter() @Default(0) double balanceCost,

    /// 已收金额
    @String2DoubleJsonConverter() @Default(0) double collectionAmount,

    /// 学期收费标准
    @Default('') String cemesterFeesPrice,

    /// 月度收费标准
    @Default('') String monthFeesPrice,

    /// 余额抵扣明细
    @Default([]) List<BalanceDetailModel> balanceDetail,

    /// 备注
    @Default('') String remark,

    /// 排序
    @String2IntJsonConverter() @Default(0) int seq,
  }) = _BillProjectModel;

  factory BillProjectModel.fromJson(Map<String, Object?> json) =>
      _$BillProjectModelFromJson(json);
}

// 优惠项目
@freezed
class BillBenefitModel with _$BillBenefitModel {
  const BillBenefitModel._();
  const factory BillBenefitModel({
    @String2IntNullableJsonConverter() int? id,

    /// 优惠类别编码
    @Default('') String categoryCode,

    /// 优惠类别名称
    @Default('') String categoryNameCn,

    /// 优惠编码
    @Default('') String benefitCode,

    /// 优惠名称
    @Default('') String benefitName,

    /// 收费项目编码
    @Default('') String chargingProjectCode,

    /// 优惠形式
    @Default('') String benefitType,

    /// 优惠金额
    @String2DoubleJsonConverter() @Default(0) double benefitDiscount,

    /// 折扣
    @String2DoubleJsonConverter() @Default(0) double discount,

    /// 次序
    @String2IntJsonConverter() @Default(0) int sequence,
  }) = _BillBenefitModel;

  factory BillBenefitModel.fromJson(Map<String, Object?> json) =>
      _$BillBenefitModelFromJson(json);
}

@freezed
class OrderDetailModel with _$OrderDetailModel {
  const OrderDetailModel._();
  const factory OrderDetailModel({
    /// 订单编号
    String? orderNo,

    /// 付款方式编码
    @Default('') String paymentTypeCode,

    /// 付款方式名称
    @Default('') String paymentTypeName,

    /// 渠道编码
    @Default('') String channelCode,

    /// 渠道名称
    @Default('') String channelName,

    /// 订单金额
    @String2DoubleJsonConverter() @Default(0) double orderAmount,

    /// 平台订单编码
    @Default('') String merOrderNo,

    /// 跳转支付id
    @JsonKey(name: 'orderSeessionId') @Default('') String orderSessionId,

    /// 付款截止时间
    @StringTimestampNullableJsonConverter() DateTime? payDeadline,

    /// 创建时间
    @StringTimestampNullableJsonConverter() DateTime? createTime,
  }) = _OrderDetailModel;

  factory OrderDetailModel.fromJson(Map<String, Object?> json) =>
      _$OrderDetailModelFromJson(json);
}

@freezed
class BillDetailModel with _$BillDetailModel {
  const BillDetailModel._();
  const factory BillDetailModel({
    @String2IntNullableJsonConverter() int? id,

    /// 学生主键
    @String2IntNullableJsonConverter() int? studentId,

    /// 学校编码
    @Default('') String schoolCode,

    /// 学校名称
    @Default('') String schoolName,

    /// 学生姓名
    @Default('') String studentName,

    /// 学生编码
    @Default('') String studentCode,

    /// 学生性别
    @GenderStringJsonConverter() @Default(Gender.unknown) Gender gender,

    /// 性别名称
    @Default('') String genderName,

    /// 性别英文名称
    @Default('') String genderEngName,

    /// 当前学年学期编码
    @Default('') String yearTermCode,

    /// 学年学期编码
    @Default('') String nowYearTermCode,

    /// 学年学期
    @Default('') String yearTermName,

    /// 学年学期英文名称
    @Default('') String yearTermEngName,

    /// 学段编码
    @Default('') String phaseCode,

    /// 学段名称
    @Default('') String phaseName,

    /// 学段英文名称
    @Default('') String phaseEngName,

    /// 课程编码
    @Default('') String courseCode,

    /// 课程名称
    @Default('') String courseName,

    /// 课程英文名称
    @Default('') String courseEngName,

    /// 年级编码
    @Default('') String gradeCode,

    /// 年级名称
    @Default('') String gradeName,

    /// 年级英文名称
    @Default('') String gradeEngName,

    /// 班级编码
    @Default('') String classCode,

    /// 班级名称
    @Default('') String className,

    /// 班级英文名称
    @Default('') String classEngName,

    /// 收费标准类别编码
    @Default('') String standardCategoryCode,

    /// 收费标准类别名称
    @Default('') String standardCategoryName,

    /// 账单编号
    @JsonKey(name: 'billStudentCode') String? billCode,

    /// 账单生成月份
    @String2IntNullableJsonConverter() int? billMonth,

    /// 账单状态
    @Default(BillStatus.unknown) BillStatus status,

    /// 账单状态中文名称
    @Default('') String statusName,

    /// 账单状态英文名称
    @Default('') String statusEngName,

    /// 创建时间
    @StringTimestampNullableJsonConverter() DateTime? createdDate,

    /// 应付(微信实际支付)
    @String2DoubleJsonConverter() @Default(0) double payAmount,

    /// 费用合计
    @String2DoubleJsonConverter() @Default(0) double totalCost,

    /// 优惠合计
    @String2DoubleJsonConverter() @Default(0) double benefitCost,

    /// 钱包抵扣
    @String2DoubleJsonConverter() @Default(0) double walletCost,

    /// 账单合计
    @String2DoubleJsonConverter() @Default(0) double billCost,

    /// 特殊折扣
    @String2DoubleJsonConverter() @Default(0) double specialCost,

    /// 抵扣金额
    @String2DoubleJsonConverter() @Default(0) double deductionCost,

    /// 余额抵扣
    @String2DoubleJsonConverter() @Default(0) double balanceCost,

    /// 已缴合计
    @String2DoubleJsonConverter() @Default(0) double paidCost,

    /// 退费金额
    @String2DoubleJsonConverter() @Default(0) double refundCost,

    /// 有效时间
    @StringTimestampNullableJsonConverter() DateTime? effectiveTime,

    /// 账单类别(需要对应字典)
    String? billCategory,

    /// 账单类别中文名称
    @Default('') String billCategoryName,

    /// 账单类别英文名称
    @Default('') String billCategoryEngName,

    /// 收费项目
    @JsonKey(name: 'studentBillProjectVOS')
    @Default([])
    List<BillProjectModel> projectList,

    /// 优惠项目
    @JsonKey(name: 'studentBillBenefitVOS')
    @Default([])
    List<BillBenefitModel> benefitList,

    /// 订单详情
    @JsonKey(name: 'orderDetailVO') OrderDetailModel? order,
  }) = _BillDetailModel;

  bool get validate => id != null;
  bool get canPaid => status == BillStatus.toBePaid;
  double get needPaid => totalCost - paidCost;

  factory BillDetailModel.empty() => const BillDetailModel();

  factory BillDetailModel.fromJson(Map<String, Object?> json) =>
      _$BillDetailModelFromJson(json);
}

/// 渠道信息
@freezed
class ChannelModel with _$ChannelModel {
  const ChannelModel._();
  const factory ChannelModel({
    /// id
    String? appId,

    /// 主键
    String? id,

    /// 渠道id
    String? channelId,

    /// 渠道名称
    @Default('') String channelName,

    /// 银行编码
    @Default('') String bankCode,

    /// 银行名称
    @Default('') String bankName,

    /// 分支行名称
    @Default('') String branchBankName,

    /// 银行账号
    @Default('') String bankAccountNo,

    /// 商户id
    String? merchantId,

    /// 商户号
    String? merchantCode,

    /// 商户名称
    @Default('') String merchantName,

    /// 账号名
    @Default('') String accountName,

    /// 二维码
    String? qrCodeUrl,

    /// 状态
    String? status,
  }) = _ChannelModel;

  factory ChannelModel.fromJson(Map<String, Object?> json) =>
      _$ChannelModelFromJson(json);
}

/// 支付方式
@freezed
class PaymentModel with _$PaymentModel {
  const PaymentModel._();
  const factory PaymentModel({
    /// 是否是线上支付
    @String2BoolJsonConverter() @Default(false) bool isOnline,

    /// 学校编码
    @Default('') String schoolCode,

    /// 账单类型
    @Default('') String billCategory,

    /// 账单类型名称
    @Default('') String billCategoryName,

    /// 付款方式编码
    @JsonKey(unknownEnumValue: PaymentTypeCode.unknown)
    @Default(PaymentTypeCode.bankTrans)
    PaymentTypeCode paymentTypeCode,

    /// 付款方式名称
    @Default('') String paymentTypeName,

    /// 是否展示
    @String2BoolJsonConverter() @Default(false) bool isShow,

    /// 渠道列表
    @JsonKey(name: 'bankAccountPaymentDetails')
    @Default([])
    List<ChannelModel> channelList,
  }) = _PaymentModel;

  factory PaymentModel.empty() => const PaymentModel();

  factory PaymentModel.fromJson(Map<String, Object?> json) =>
      _$PaymentModelFromJson(json);
}

/// 将支付方式和渠道包装到一起
@freezed
class ChannelWrapper with _$ChannelWrapper {
  const ChannelWrapper._();
  const factory ChannelWrapper({
    required PaymentModel payment,
    required ChannelModel channel,
  }) = _ChannelWrapper;

  factory ChannelWrapper.fromJson(Map<String, Object?> json) =>
      _$ChannelWrapperFromJson(json);
}

/// 订单支付状态
@freezed
class OrderStatusModel with _$OrderStatusModel {
  const OrderStatusModel._();
  const factory OrderStatusModel({
    /// 商户编号 "B10000003",
    @Default('') String merchantNo,

    /// 平台订单编号 "T2023030221364299100037096",
    @Default('') String orderNo,

    /// 商户订单编号 "5f000cb6-4349-45bd-a689-00ea5fae7358",
    @Default('') String merOrderNo,

    /// 下单币种 "CNY",
    @Default('') String orderCurrency,

    /// 用户支付的产品 "N/A",
    @Default('') String payType,

    /// 订单金额 "4820000",
    @Default(0) @String2IntJsonConverter() int orderAmt,

    /// 支付币种 "N/A",
    @Default('') String currency,

    /// 实际支付金额, 单位：分 "4820000",
    @Default(0) @String2IntJsonConverter() int payAmt,

    /// 订单状态 "NEW",
    TradeStatus? tradeStatus,

    /// 交易状态描述 null,
    @Default('') String tradeMsg,

    /// 商户保留域 null,
    @Default('') String remark,

    /// "N/A",
    @Default('') String channelType,

    /// 响应编码 "R000",
    @Default('') String statusCode,

    /// 响应描述 "处理成功"
    @Default('') String statusDesc,
  }) = _OrderStatusModel;

  factory OrderStatusModel.fromJson(Map<String, Object?> json) =>
      _$OrderStatusModelFromJson(json);
}

/// 账单配置
@freezed
class BillConfigMap with _$BillConfigMap {
  const BillConfigMap._();
  const factory BillConfigMap({
    required HashMap<String, Map<String, BillConfigModel>> configs,
  }) = _BillConfigMap;

  void pushConfig(String schoolCode, Map<String, BillConfigModel> config) {
    configs[schoolCode] = config;
  }

  BillConfigModel? _getConfig(String? schoolCode, String? category) =>
      configs[schoolCode]?[category];

  bool billEnable(BillModel bill) =>
      _getConfig(bill.schoolCode, bill.billCategory)?.display ?? false;

  bool billDetailEnable(BillDetailModel bill) =>
      _getConfig(bill.schoolCode, bill.billCategory)?.display ?? false;

  BillConfigModel? billConfig(BillModel bill, String binding) =>
      _getConfig(bill.schoolCode, bill.billCategory)?.matchConfig(binding);

  BillConfigModel? billDetailConfig(BillDetailModel bill, String binding) =>
      _getConfig(bill.schoolCode, bill.billCategory)?.matchConfig(binding);

  factory BillConfigMap.empty() => BillConfigMap(configs: HashMap());
}

/// 账单配置
@freezed
class BillConfigModel with _$BillConfigModel {
  const BillConfigModel._();
  const factory BillConfigModel({
    /// 主键
    required int id,

    /// 字典菜单名称
    @JsonKey(name: 'dictMenuName') @Default('') String menuName,

    /// 是否展示
    @JsonKey(name: 'displayFlag') @Default(true) bool display,

    /// 绑定值
    @JsonKey(name: 'bindingFlag') @Default('') String binding,

    /// 排序
    @JsonKey(name: 'seq') @Default(0) int sortNo,

    /// 子字典菜单
    @JsonKey(name: 'sonDictMenus') @Default([]) List<BillConfigModel> children,
  }) = _BillConfigModel;

  bool get validate => id != -1;
  BillConfigModel? matchConfig(String binding) {
    if (children.isEmpty) return null;
    final index = children.indexWhere((e) => e.binding == binding);
    return index != -1 ? children[index] : null;
  }

  factory BillConfigModel.empty() => const BillConfigModel(id: -1);

  factory BillConfigModel.fromJson(Map<String, Object?> json) =>
      _$BillConfigModelFromJson(json);
}
