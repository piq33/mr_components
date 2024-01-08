// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BillFilterReqImpl _$$BillFilterReqImplFromJson(Map<String, dynamic> json) =>
    _$BillFilterReqImpl(
      studentCode: json['studentCode'] as String,
    );

Map<String, dynamic> _$$BillFilterReqImplToJson(_$BillFilterReqImpl instance) =>
    <String, dynamic>{
      'studentCode': instance.studentCode,
    };

_$BillFilterModelImpl _$$BillFilterModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BillFilterModelImpl(
      selectedSchool: json['selectedSchool'] == null
          ? null
          : FilterSchoolModel.fromJson(
              json['selectedSchool'] as Map<String, dynamic>),
      selectedYearTerm: json['selectedYearTerm'] == null
          ? null
          : FilterYearTermModel.fromJson(
              json['selectedYearTerm'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BillFilterModelImplToJson(
        _$BillFilterModelImpl instance) =>
    <String, dynamic>{
      'selectedSchool': instance.selectedSchool,
      'selectedYearTerm': instance.selectedYearTerm,
    };

_$BillOtherParamImpl _$$BillOtherParamImplFromJson(Map<String, dynamic> json) =>
    _$BillOtherParamImpl(
      billStudentCode: json['billStudentCode'] as String? ?? '',
    );

Map<String, dynamic> _$$BillOtherParamImplToJson(
        _$BillOtherParamImpl instance) =>
    <String, dynamic>{
      'billStudentCode': instance.billStudentCode,
    };

_$PrepareOrderReqImpl _$$PrepareOrderReqImplFromJson(
        Map<String, dynamic> json) =>
    _$PrepareOrderReqImpl(
      accountPaymentId: json['accountPaymentId'] as String?,
      billStudentCode: json['billStudentCode'] as String?,
      orderAmount: (json['orderAmount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PrepareOrderReqImplToJson(
        _$PrepareOrderReqImpl instance) =>
    <String, dynamic>{
      'accountPaymentId': instance.accountPaymentId,
      'billStudentCode': instance.billStudentCode,
      'orderAmount': instance.orderAmount,
    };

_$BillReqImpl _$$BillReqImplFromJson(Map<String, dynamic> json) =>
    _$BillReqImpl(
      schoolCode: json['schoolCode'] as String?,
      yearTermCode: json['yearTermCode'] as String?,
      status: $enumDecodeNullable(_$BillStatusEnumMap, json['status']),
      studentCode: json['studentCode'] as String,
    );

Map<String, dynamic> _$$BillReqImplToJson(_$BillReqImpl instance) =>
    <String, dynamic>{
      'schoolCode': instance.schoolCode,
      'yearTermCode': instance.yearTermCode,
      'status': _$BillStatusEnumMap[instance.status],
      'studentCode': instance.studentCode,
    };

const _$BillStatusEnumMap = {
  BillStatus.unknown: 'unknown',
  BillStatus.all: '',
  BillStatus.billToBePaid: '10',
  BillStatus.pendingTrial: '20',
  BillStatus.toBeReviewed: '30',
  BillStatus.toBeConfirmed: '40',
  BillStatus.toBePaid: '50',
  BillStatus.partialPayment: '60',
  BillStatus.completed: '70',
  BillStatus.overPay: '80',
  BillStatus.freeze: '90',
  BillStatus.cancel: '99',
};

_$PrepareOrderModelImpl _$$PrepareOrderModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PrepareOrderModelImpl(
      accountName: json['accountName'] as String? ?? '',
      bankAccountNo: json['bankAccountNo'] as String? ?? '',
      bankCode: json['bankCode'] as String? ?? '',
      bankName: json['bankName'] as String? ?? '',
      billStudentCode: json['billStudentCode'] as String? ?? '',
      branchBankName: json['branchBankName'] as String? ?? '',
      isOnline: json['isOnline'] == null
          ? false
          : const String2BoolJsonConverter()
              .fromJson(json['isOnline'] as String),
      orderAmount: json['orderAmount'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['orderAmount'] as String),
      orderSessionId: json['orderSeessionId'] as String? ?? '',
      paymentTypeCode: json['paymentTypeCode'] as String? ?? '',
      paymentTypeNameCn: json['paymentTypeNameCn'] as String? ?? '',
    );

Map<String, dynamic> _$$PrepareOrderModelImplToJson(
        _$PrepareOrderModelImpl instance) =>
    <String, dynamic>{
      'accountName': instance.accountName,
      'bankAccountNo': instance.bankAccountNo,
      'bankCode': instance.bankCode,
      'bankName': instance.bankName,
      'billStudentCode': instance.billStudentCode,
      'branchBankName': instance.branchBankName,
      'isOnline': const String2BoolJsonConverter().toJson(instance.isOnline),
      'orderAmount':
          const String2DoubleJsonConverter().toJson(instance.orderAmount),
      'orderSeessionId': instance.orderSessionId,
      'paymentTypeCode': instance.paymentTypeCode,
      'paymentTypeNameCn': instance.paymentTypeNameCn,
    };

_$BillModelImpl _$$BillModelImplFromJson(Map<String, dynamic> json) =>
    _$BillModelImpl(
      studentId: _$JsonConverterFromJson<String, int?>(
          json['studentId'], const String2IntNullableJsonConverter().fromJson),
      schoolCode: json['schoolCode'] as String? ?? '',
      schoolName: json['schoolName'] as String? ?? '',
      billCode: json['billStudentCode'] as String?,
      studentCode: json['studentCode'] as String? ?? '',
      studentName: json['studentName'] as String? ?? '',
      yearTermCode: json['yearTermCode'] as String? ?? '',
      yearTermName: json['yearTermName'] as String? ?? '',
      yearTermEngName: json['yearTermEngName'] as String? ?? '',
      phaseCode: json['phaseCode'] as String? ?? '',
      phaseName: json['phaseName'] as String? ?? '',
      phaseEngName: json['phaseEngName'] as String? ?? '',
      courseCode: json['courseCode'] as String? ?? '',
      courseName: json['courseName'] as String? ?? '',
      courseEngName: json['courseEngName'] as String? ?? '',
      gradeCode: json['gradeCode'] as String? ?? '',
      gradeName: json['gradeName'] as String? ?? '',
      gradeEngName: json['gradeEngName'] as String? ?? '',
      classCode: json['classCode'] as String? ?? '',
      className: json['className'] as String? ?? '',
      classEngName: json['classEngName'] as String? ?? '',
      payAmount: json['payAmount'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['payAmount'] as String),
      totalCost: json['totalCost'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['totalCost'] as String),
      benefitCost: json['benefitCost'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['benefitCost'] as String),
      billCost: json['billCost'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['billCost'] as String),
      paidCost: json['paidCost'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['paidCost'] as String),
      walletCost: json['walletCost'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['walletCost'] as String),
      specialCost: json['specialCost'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['specialCost'] as String),
      deductionCost: json['deductionCost'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['deductionCost'] as String),
      balanceCost: json['balanceCost'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['balanceCost'] as String),
      refundCost: json['refundCost'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['refundCost'] as String),
      termPayableCost: json['termPayableCost'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['termPayableCost'] as String),
      termBenefitCost: json['termBenefitCost'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['termBenefitCost'] as String),
      owePaidCost: json['owePaidCost'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['owePaidCost'] as String),
      oweCost: json['oweCost'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['oweCost'] as String),
      status: $enumDecodeNullable(_$BillStatusEnumMap, json['status']) ??
          BillStatus.unknown,
      statusName: json['statusName'] as String? ?? '',
      statusEngName: json['statusEngName'] as String? ?? '',
      billCategory: json['billCategory'] as String?,
      billCategoryName: json['billCategoryName'] as String? ?? '',
      billCategoryEngName: json['billCategoryEngName'] as String? ?? '',
      createdDate: _$JsonConverterFromJson<String, DateTime?>(
          json['createdDate'],
          const StringTimestampNullableJsonConverter().fromJson),
      isAbnormal: json['isAbnormal'] == null
          ? false
          : const String2BoolJsonConverter()
              .fromJson(json['isAbnormal'] as String),
      isPreUpdate: json['isPreUpdate'] == null
          ? false
          : const String2BoolJsonConverter()
              .fromJson(json['isPreUpdate'] as String),
      isClosed: json['isClosed'] == null
          ? false
          : const String2BoolJsonConverter()
              .fromJson(json['isClosed'] as String),
    );

Map<String, dynamic> _$$BillModelImplToJson(_$BillModelImpl instance) =>
    <String, dynamic>{
      'studentId':
          const String2IntNullableJsonConverter().toJson(instance.studentId),
      'schoolCode': instance.schoolCode,
      'schoolName': instance.schoolName,
      'billStudentCode': instance.billCode,
      'studentCode': instance.studentCode,
      'studentName': instance.studentName,
      'yearTermCode': instance.yearTermCode,
      'yearTermName': instance.yearTermName,
      'yearTermEngName': instance.yearTermEngName,
      'phaseCode': instance.phaseCode,
      'phaseName': instance.phaseName,
      'phaseEngName': instance.phaseEngName,
      'courseCode': instance.courseCode,
      'courseName': instance.courseName,
      'courseEngName': instance.courseEngName,
      'gradeCode': instance.gradeCode,
      'gradeName': instance.gradeName,
      'gradeEngName': instance.gradeEngName,
      'classCode': instance.classCode,
      'className': instance.className,
      'classEngName': instance.classEngName,
      'payAmount':
          const String2DoubleJsonConverter().toJson(instance.payAmount),
      'totalCost':
          const String2DoubleJsonConverter().toJson(instance.totalCost),
      'benefitCost':
          const String2DoubleJsonConverter().toJson(instance.benefitCost),
      'billCost': const String2DoubleJsonConverter().toJson(instance.billCost),
      'paidCost': const String2DoubleJsonConverter().toJson(instance.paidCost),
      'walletCost':
          const String2DoubleJsonConverter().toJson(instance.walletCost),
      'specialCost':
          const String2DoubleJsonConverter().toJson(instance.specialCost),
      'deductionCost':
          const String2DoubleJsonConverter().toJson(instance.deductionCost),
      'balanceCost':
          const String2DoubleJsonConverter().toJson(instance.balanceCost),
      'refundCost':
          const String2DoubleJsonConverter().toJson(instance.refundCost),
      'termPayableCost':
          const String2DoubleJsonConverter().toJson(instance.termPayableCost),
      'termBenefitCost':
          const String2DoubleJsonConverter().toJson(instance.termBenefitCost),
      'owePaidCost':
          const String2DoubleJsonConverter().toJson(instance.owePaidCost),
      'oweCost': const String2DoubleJsonConverter().toJson(instance.oweCost),
      'status': _$BillStatusEnumMap[instance.status]!,
      'statusName': instance.statusName,
      'statusEngName': instance.statusEngName,
      'billCategory': instance.billCategory,
      'billCategoryName': instance.billCategoryName,
      'billCategoryEngName': instance.billCategoryEngName,
      'createdDate': const StringTimestampNullableJsonConverter()
          .toJson(instance.createdDate),
      'isAbnormal':
          const String2BoolJsonConverter().toJson(instance.isAbnormal),
      'isPreUpdate':
          const String2BoolJsonConverter().toJson(instance.isPreUpdate),
      'isClosed': const String2BoolJsonConverter().toJson(instance.isClosed),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

_$BalanceDetailModelImpl _$$BalanceDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BalanceDetailModelImpl(
      subjectName: json['subjectName'] as String? ?? '',
      amount: json['amount'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['amount'] as String),
    );

Map<String, dynamic> _$$BalanceDetailModelImplToJson(
        _$BalanceDetailModelImpl instance) =>
    <String, dynamic>{
      'subjectName': instance.subjectName,
      'amount': const String2DoubleJsonConverter().toJson(instance.amount),
    };

_$BillProjectModelImpl _$$BillProjectModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BillProjectModelImpl(
      billCode: json['studentBillCode'] as String?,
      chargingCategoryCode: json['chargingCategoryCode'] as String? ?? '',
      categoryNameCn: json['categoryNameCn'] as String? ?? '',
      categoryNameEn: json['categoryNameEn'] as String? ?? '',
      chargingProjectCode: json['chargingProjectCode'] as String? ?? '',
      chargingProjectNameCn: json['chargingProjectNameCn'] as String? ?? '',
      chargingProjectNameEn: json['chargingProjectNameEn'] as String? ?? '',
      feesCost: json['feesCost'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['feesCost'] as String),
      benefitCost: json['benefitCost'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['benefitCost'] as String),
      totalCost: json['totalCost'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['totalCost'] as String),
      paidCost: json['paidCost'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['paidCost'] as String),
      originalBenefitCost: json['originalBenefitCost'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['originalBenefitCost'] as String),
      originalPaidCost: json['originalPaidCost'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['originalPaidCost'] as String),
      isGuaranteed: json['isGuaranteed'] == null
          ? false
          : const String2BoolJsonConverter()
              .fromJson(json['isGuaranteed'] as String),
      guaranteedRate: json['guaranteedRate'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['guaranteedRate'] as String),
      differenceCost: json['differenceCost'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['differenceCost'] as String),
      deductionCost: json['deductionCost'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['deductionCost'] as String),
      balanceCost: json['balanceCost'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['balanceCost'] as String),
      collectionAmount: json['collectionAmount'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['collectionAmount'] as String),
      cemesterFeesPrice: json['cemesterFeesPrice'] as String? ?? '',
      monthFeesPrice: json['monthFeesPrice'] as String? ?? '',
      balanceDetail: (json['balanceDetail'] as List<dynamic>?)
              ?.map(
                  (e) => BalanceDetailModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      remark: json['remark'] as String? ?? '',
      seq: json['seq'] == null
          ? 0
          : const String2IntJsonConverter().fromJson(json['seq'] as String),
    );

Map<String, dynamic> _$$BillProjectModelImplToJson(
        _$BillProjectModelImpl instance) =>
    <String, dynamic>{
      'studentBillCode': instance.billCode,
      'chargingCategoryCode': instance.chargingCategoryCode,
      'categoryNameCn': instance.categoryNameCn,
      'categoryNameEn': instance.categoryNameEn,
      'chargingProjectCode': instance.chargingProjectCode,
      'chargingProjectNameCn': instance.chargingProjectNameCn,
      'chargingProjectNameEn': instance.chargingProjectNameEn,
      'feesCost': const String2DoubleJsonConverter().toJson(instance.feesCost),
      'benefitCost':
          const String2DoubleJsonConverter().toJson(instance.benefitCost),
      'totalCost':
          const String2DoubleJsonConverter().toJson(instance.totalCost),
      'paidCost': const String2DoubleJsonConverter().toJson(instance.paidCost),
      'originalBenefitCost': const String2DoubleJsonConverter()
          .toJson(instance.originalBenefitCost),
      'originalPaidCost':
          const String2DoubleJsonConverter().toJson(instance.originalPaidCost),
      'isGuaranteed':
          const String2BoolJsonConverter().toJson(instance.isGuaranteed),
      'guaranteedRate':
          const String2DoubleJsonConverter().toJson(instance.guaranteedRate),
      'differenceCost':
          const String2DoubleJsonConverter().toJson(instance.differenceCost),
      'deductionCost':
          const String2DoubleJsonConverter().toJson(instance.deductionCost),
      'balanceCost':
          const String2DoubleJsonConverter().toJson(instance.balanceCost),
      'collectionAmount':
          const String2DoubleJsonConverter().toJson(instance.collectionAmount),
      'cemesterFeesPrice': instance.cemesterFeesPrice,
      'monthFeesPrice': instance.monthFeesPrice,
      'balanceDetail': instance.balanceDetail,
      'remark': instance.remark,
      'seq': const String2IntJsonConverter().toJson(instance.seq),
    };

_$BillBenefitModelImpl _$$BillBenefitModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BillBenefitModelImpl(
      id: _$JsonConverterFromJson<String, int?>(
          json['id'], const String2IntNullableJsonConverter().fromJson),
      categoryCode: json['categoryCode'] as String? ?? '',
      categoryNameCn: json['categoryNameCn'] as String? ?? '',
      benefitCode: json['benefitCode'] as String? ?? '',
      benefitName: json['benefitName'] as String? ?? '',
      chargingProjectCode: json['chargingProjectCode'] as String? ?? '',
      benefitType: json['benefitType'] as String? ?? '',
      benefitDiscount: json['benefitDiscount'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['benefitDiscount'] as String),
      discount: json['discount'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['discount'] as String),
      sequence: json['sequence'] == null
          ? 0
          : const String2IntJsonConverter()
              .fromJson(json['sequence'] as String),
    );

Map<String, dynamic> _$$BillBenefitModelImplToJson(
        _$BillBenefitModelImpl instance) =>
    <String, dynamic>{
      'id': const String2IntNullableJsonConverter().toJson(instance.id),
      'categoryCode': instance.categoryCode,
      'categoryNameCn': instance.categoryNameCn,
      'benefitCode': instance.benefitCode,
      'benefitName': instance.benefitName,
      'chargingProjectCode': instance.chargingProjectCode,
      'benefitType': instance.benefitType,
      'benefitDiscount':
          const String2DoubleJsonConverter().toJson(instance.benefitDiscount),
      'discount': const String2DoubleJsonConverter().toJson(instance.discount),
      'sequence': const String2IntJsonConverter().toJson(instance.sequence),
    };

_$OrderDetailModelImpl _$$OrderDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderDetailModelImpl(
      orderNo: json['orderNo'] as String?,
      paymentTypeCode: json['paymentTypeCode'] as String? ?? '',
      paymentTypeName: json['paymentTypeName'] as String? ?? '',
      channelCode: json['channelCode'] as String? ?? '',
      channelName: json['channelName'] as String? ?? '',
      orderAmount: json['orderAmount'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['orderAmount'] as String),
      merOrderNo: json['merOrderNo'] as String? ?? '',
      orderSessionId: json['orderSeessionId'] as String? ?? '',
      payDeadline: _$JsonConverterFromJson<String, DateTime?>(
          json['payDeadline'],
          const StringTimestampNullableJsonConverter().fromJson),
      createTime: _$JsonConverterFromJson<String, DateTime?>(json['createTime'],
          const StringTimestampNullableJsonConverter().fromJson),
    );

Map<String, dynamic> _$$OrderDetailModelImplToJson(
        _$OrderDetailModelImpl instance) =>
    <String, dynamic>{
      'orderNo': instance.orderNo,
      'paymentTypeCode': instance.paymentTypeCode,
      'paymentTypeName': instance.paymentTypeName,
      'channelCode': instance.channelCode,
      'channelName': instance.channelName,
      'orderAmount':
          const String2DoubleJsonConverter().toJson(instance.orderAmount),
      'merOrderNo': instance.merOrderNo,
      'orderSeessionId': instance.orderSessionId,
      'payDeadline': const StringTimestampNullableJsonConverter()
          .toJson(instance.payDeadline),
      'createTime': const StringTimestampNullableJsonConverter()
          .toJson(instance.createTime),
    };

_$BillDetailModelImpl _$$BillDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BillDetailModelImpl(
      id: _$JsonConverterFromJson<String, int?>(
          json['id'], const String2IntNullableJsonConverter().fromJson),
      studentId: _$JsonConverterFromJson<String, int?>(
          json['studentId'], const String2IntNullableJsonConverter().fromJson),
      schoolCode: json['schoolCode'] as String? ?? '',
      schoolName: json['schoolName'] as String? ?? '',
      studentName: json['studentName'] as String? ?? '',
      studentCode: json['studentCode'] as String? ?? '',
      gender: json['gender'] == null
          ? Gender.unknown
          : const GenderStringJsonConverter()
              .fromJson(json['gender'] as String),
      genderName: json['genderName'] as String? ?? '',
      genderEngName: json['genderEngName'] as String? ?? '',
      yearTermCode: json['yearTermCode'] as String? ?? '',
      nowYearTermCode: json['nowYearTermCode'] as String? ?? '',
      yearTermName: json['yearTermName'] as String? ?? '',
      yearTermEngName: json['yearTermEngName'] as String? ?? '',
      phaseCode: json['phaseCode'] as String? ?? '',
      phaseName: json['phaseName'] as String? ?? '',
      phaseEngName: json['phaseEngName'] as String? ?? '',
      courseCode: json['courseCode'] as String? ?? '',
      courseName: json['courseName'] as String? ?? '',
      courseEngName: json['courseEngName'] as String? ?? '',
      gradeCode: json['gradeCode'] as String? ?? '',
      gradeName: json['gradeName'] as String? ?? '',
      gradeEngName: json['gradeEngName'] as String? ?? '',
      classCode: json['classCode'] as String? ?? '',
      className: json['className'] as String? ?? '',
      classEngName: json['classEngName'] as String? ?? '',
      standardCategoryCode: json['standardCategoryCode'] as String? ?? '',
      standardCategoryName: json['standardCategoryName'] as String? ?? '',
      billCode: json['billStudentCode'] as String?,
      billMonth: _$JsonConverterFromJson<String, int?>(
          json['billMonth'], const String2IntNullableJsonConverter().fromJson),
      status: $enumDecodeNullable(_$BillStatusEnumMap, json['status']) ??
          BillStatus.unknown,
      statusName: json['statusName'] as String? ?? '',
      statusEngName: json['statusEngName'] as String? ?? '',
      createdDate: _$JsonConverterFromJson<String, DateTime?>(
          json['createdDate'],
          const StringTimestampNullableJsonConverter().fromJson),
      payAmount: json['payAmount'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['payAmount'] as String),
      totalCost: json['totalCost'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['totalCost'] as String),
      benefitCost: json['benefitCost'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['benefitCost'] as String),
      walletCost: json['walletCost'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['walletCost'] as String),
      billCost: json['billCost'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['billCost'] as String),
      specialCost: json['specialCost'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['specialCost'] as String),
      deductionCost: json['deductionCost'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['deductionCost'] as String),
      balanceCost: json['balanceCost'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['balanceCost'] as String),
      paidCost: json['paidCost'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['paidCost'] as String),
      refundCost: json['refundCost'] == null
          ? 0
          : const String2DoubleJsonConverter()
              .fromJson(json['refundCost'] as String),
      effectiveTime: _$JsonConverterFromJson<String, DateTime?>(
          json['effectiveTime'],
          const StringTimestampNullableJsonConverter().fromJson),
      billCategory: json['billCategory'] as String?,
      billCategoryName: json['billCategoryName'] as String? ?? '',
      billCategoryEngName: json['billCategoryEngName'] as String? ?? '',
      projectList: (json['studentBillProjectVOS'] as List<dynamic>?)
              ?.map((e) => BillProjectModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      benefitList: (json['studentBillBenefitVOS'] as List<dynamic>?)
              ?.map((e) => BillBenefitModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      order: json['orderDetailVO'] == null
          ? null
          : OrderDetailModel.fromJson(
              json['orderDetailVO'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BillDetailModelImplToJson(
        _$BillDetailModelImpl instance) =>
    <String, dynamic>{
      'id': const String2IntNullableJsonConverter().toJson(instance.id),
      'studentId':
          const String2IntNullableJsonConverter().toJson(instance.studentId),
      'schoolCode': instance.schoolCode,
      'schoolName': instance.schoolName,
      'studentName': instance.studentName,
      'studentCode': instance.studentCode,
      'gender': const GenderStringJsonConverter().toJson(instance.gender),
      'genderName': instance.genderName,
      'genderEngName': instance.genderEngName,
      'yearTermCode': instance.yearTermCode,
      'nowYearTermCode': instance.nowYearTermCode,
      'yearTermName': instance.yearTermName,
      'yearTermEngName': instance.yearTermEngName,
      'phaseCode': instance.phaseCode,
      'phaseName': instance.phaseName,
      'phaseEngName': instance.phaseEngName,
      'courseCode': instance.courseCode,
      'courseName': instance.courseName,
      'courseEngName': instance.courseEngName,
      'gradeCode': instance.gradeCode,
      'gradeName': instance.gradeName,
      'gradeEngName': instance.gradeEngName,
      'classCode': instance.classCode,
      'className': instance.className,
      'classEngName': instance.classEngName,
      'standardCategoryCode': instance.standardCategoryCode,
      'standardCategoryName': instance.standardCategoryName,
      'billStudentCode': instance.billCode,
      'billMonth':
          const String2IntNullableJsonConverter().toJson(instance.billMonth),
      'status': _$BillStatusEnumMap[instance.status]!,
      'statusName': instance.statusName,
      'statusEngName': instance.statusEngName,
      'createdDate': const StringTimestampNullableJsonConverter()
          .toJson(instance.createdDate),
      'payAmount':
          const String2DoubleJsonConverter().toJson(instance.payAmount),
      'totalCost':
          const String2DoubleJsonConverter().toJson(instance.totalCost),
      'benefitCost':
          const String2DoubleJsonConverter().toJson(instance.benefitCost),
      'walletCost':
          const String2DoubleJsonConverter().toJson(instance.walletCost),
      'billCost': const String2DoubleJsonConverter().toJson(instance.billCost),
      'specialCost':
          const String2DoubleJsonConverter().toJson(instance.specialCost),
      'deductionCost':
          const String2DoubleJsonConverter().toJson(instance.deductionCost),
      'balanceCost':
          const String2DoubleJsonConverter().toJson(instance.balanceCost),
      'paidCost': const String2DoubleJsonConverter().toJson(instance.paidCost),
      'refundCost':
          const String2DoubleJsonConverter().toJson(instance.refundCost),
      'effectiveTime': const StringTimestampNullableJsonConverter()
          .toJson(instance.effectiveTime),
      'billCategory': instance.billCategory,
      'billCategoryName': instance.billCategoryName,
      'billCategoryEngName': instance.billCategoryEngName,
      'studentBillProjectVOS': instance.projectList,
      'studentBillBenefitVOS': instance.benefitList,
      'orderDetailVO': instance.order,
    };

_$ChannelModelImpl _$$ChannelModelImplFromJson(Map<String, dynamic> json) =>
    _$ChannelModelImpl(
      appId: json['appId'] as String?,
      id: json['id'] as String?,
      channelId: json['channelId'] as String?,
      channelName: json['channelName'] as String? ?? '',
      bankCode: json['bankCode'] as String? ?? '',
      bankName: json['bankName'] as String? ?? '',
      branchBankName: json['branchBankName'] as String? ?? '',
      bankAccountNo: json['bankAccountNo'] as String? ?? '',
      merchantId: json['merchantId'] as String?,
      merchantCode: json['merchantCode'] as String?,
      merchantName: json['merchantName'] as String? ?? '',
      accountName: json['accountName'] as String? ?? '',
      qrCodeUrl: json['qrCodeUrl'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$ChannelModelImplToJson(_$ChannelModelImpl instance) =>
    <String, dynamic>{
      'appId': instance.appId,
      'id': instance.id,
      'channelId': instance.channelId,
      'channelName': instance.channelName,
      'bankCode': instance.bankCode,
      'bankName': instance.bankName,
      'branchBankName': instance.branchBankName,
      'bankAccountNo': instance.bankAccountNo,
      'merchantId': instance.merchantId,
      'merchantCode': instance.merchantCode,
      'merchantName': instance.merchantName,
      'accountName': instance.accountName,
      'qrCodeUrl': instance.qrCodeUrl,
      'status': instance.status,
    };

_$PaymentModelImpl _$$PaymentModelImplFromJson(Map<String, dynamic> json) =>
    _$PaymentModelImpl(
      isOnline: json['isOnline'] == null
          ? false
          : const String2BoolJsonConverter()
              .fromJson(json['isOnline'] as String),
      schoolCode: json['schoolCode'] as String? ?? '',
      billCategory: json['billCategory'] as String? ?? '',
      billCategoryName: json['billCategoryName'] as String? ?? '',
      paymentTypeCode: $enumDecodeNullable(
              _$PaymentTypeCodeEnumMap, json['paymentTypeCode'],
              unknownValue: PaymentTypeCode.unknown) ??
          PaymentTypeCode.bankTrans,
      paymentTypeName: json['paymentTypeName'] as String? ?? '',
      isShow: json['isShow'] == null
          ? false
          : const String2BoolJsonConverter().fromJson(json['isShow'] as String),
      channelList: (json['bankAccountPaymentDetails'] as List<dynamic>?)
              ?.map((e) => ChannelModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PaymentModelImplToJson(_$PaymentModelImpl instance) =>
    <String, dynamic>{
      'isOnline': const String2BoolJsonConverter().toJson(instance.isOnline),
      'schoolCode': instance.schoolCode,
      'billCategory': instance.billCategory,
      'billCategoryName': instance.billCategoryName,
      'paymentTypeCode': _$PaymentTypeCodeEnumMap[instance.paymentTypeCode]!,
      'paymentTypeName': instance.paymentTypeName,
      'isShow': const String2BoolJsonConverter().toJson(instance.isShow),
      'bankAccountPaymentDetails': instance.channelList,
    };

const _$PaymentTypeCodeEnumMap = {
  PaymentTypeCode.unknown: '',
  PaymentTypeCode.onlinePayment: 'OnlinePayment',
  PaymentTypeCode.bankTrans: 'BankTrans',
  PaymentTypeCode.bankDeduction: 'BankDeduction',
};

_$ChannelWrapperImpl _$$ChannelWrapperImplFromJson(Map<String, dynamic> json) =>
    _$ChannelWrapperImpl(
      payment: PaymentModel.fromJson(json['payment'] as Map<String, dynamic>),
      channel: ChannelModel.fromJson(json['channel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChannelWrapperImplToJson(
        _$ChannelWrapperImpl instance) =>
    <String, dynamic>{
      'payment': instance.payment,
      'channel': instance.channel,
    };

_$OrderStatusModelImpl _$$OrderStatusModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderStatusModelImpl(
      merchantNo: json['merchantNo'] as String? ?? '',
      orderNo: json['orderNo'] as String? ?? '',
      merOrderNo: json['merOrderNo'] as String? ?? '',
      orderCurrency: json['orderCurrency'] as String? ?? '',
      payType: json['payType'] as String? ?? '',
      orderAmt: json['orderAmt'] == null
          ? 0
          : const String2IntJsonConverter()
              .fromJson(json['orderAmt'] as String),
      currency: json['currency'] as String? ?? '',
      payAmt: json['payAmt'] == null
          ? 0
          : const String2IntJsonConverter().fromJson(json['payAmt'] as String),
      tradeStatus:
          $enumDecodeNullable(_$TradeStatusEnumMap, json['tradeStatus']),
      tradeMsg: json['tradeMsg'] as String? ?? '',
      remark: json['remark'] as String? ?? '',
      channelType: json['channelType'] as String? ?? '',
      statusCode: json['statusCode'] as String? ?? '',
      statusDesc: json['statusDesc'] as String? ?? '',
    );

Map<String, dynamic> _$$OrderStatusModelImplToJson(
        _$OrderStatusModelImpl instance) =>
    <String, dynamic>{
      'merchantNo': instance.merchantNo,
      'orderNo': instance.orderNo,
      'merOrderNo': instance.merOrderNo,
      'orderCurrency': instance.orderCurrency,
      'payType': instance.payType,
      'orderAmt': const String2IntJsonConverter().toJson(instance.orderAmt),
      'currency': instance.currency,
      'payAmt': const String2IntJsonConverter().toJson(instance.payAmt),
      'tradeStatus': _$TradeStatusEnumMap[instance.tradeStatus],
      'tradeMsg': instance.tradeMsg,
      'remark': instance.remark,
      'channelType': instance.channelType,
      'statusCode': instance.statusCode,
      'statusDesc': instance.statusDesc,
    };

const _$TradeStatusEnumMap = {
  TradeStatus.newBuilt: 'NEW',
  TradeStatus.wait: 'WAIT',
  TradeStatus.ing: 'ING',
  TradeStatus.success: 'SUCCESS',
  TradeStatus.fail: 'FAIL',
  TradeStatus.err: 'ERR',
  TradeStatus.invalid: 'INVALID',
  TradeStatus.close: 'CLOSE',
};

_$BillConfigModelImpl _$$BillConfigModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BillConfigModelImpl(
      id: json['id'] as int,
      menuName: json['dictMenuName'] as String? ?? '',
      display: json['displayFlag'] as bool? ?? true,
      binding: json['bindingFlag'] as String? ?? '',
      sortNo: json['seq'] as int? ?? 0,
      children: (json['sonDictMenus'] as List<dynamic>?)
              ?.map((e) => BillConfigModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$BillConfigModelImplToJson(
        _$BillConfigModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dictMenuName': instance.menuName,
      'displayFlag': instance.display,
      'bindingFlag': instance.binding,
      'seq': instance.sortNo,
      'sonDictMenus': instance.children,
    };
