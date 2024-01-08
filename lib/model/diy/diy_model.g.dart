// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diy_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TemplateDetailModelImpl _$$TemplateDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TemplateDetailModelImpl(
      templateId: json['templateId'] as String?,
      studentAlbumId: json['studentAlbumId'] as String?,
      content: json['albumContent'] as String? ?? '',
      cover: json['albumCoverUrl'] as String?,
      catalogType: $enumDecodeNullable(_$CatalogTypeEnumMap, json['albumTag'],
              unknownValue: CatalogType.unknown) ??
          CatalogType.unknown,
      title: json['albumTitle'] as String? ?? '',
      homepageStyle: $enumDecodeNullable(
              _$HomepageStyleEnumMap, json['backgroundStyle'],
              unknownValue: HomepageStyle.blank) ??
          HomepageStyle.custom,
      backgroundUrl: json['backgroundUrl'] as String?,
      studentId: json['studentId'] as int?,
      studentName: json['studentName'] as String? ?? '',
      studentCode: json['studentCode'] as String?,
      yearTermCode: json['yearTermCode'] as String?,
      schoolCode: json['schoolCode'] as String? ?? '',
      classCode: json['classCode'] as String? ?? '',
      gradeCode: json['gradeCode'] as String? ?? '',
      courseCode: json['courseCode'] as String? ?? '',
      phaseCode: json['phaseCode'] as String? ?? '',
      hasConfig: json['hasConfig'] as bool? ?? false,
      useMusic: json['ifBackgroundMusic'] as bool? ?? false,
      ifNeedPay: json['ifNeedPay'] as bool? ?? false,
      payNotice: json['payNotice'] as String? ?? '',
      price: (json['paymentAmount'] as num?)?.toDouble() ?? 0.0,
      ifPotential: json['ifPotential'] as bool? ?? false,
      potentialId: json['potentialStudentId'] as int?,
      printSupport: $enumDecodeNullable(
              _$PrintSupportEnumMap, json['printSupport'],
              unknownValue: PrintSupport.both) ??
          PrintSupport.both,
      ifUseTemplate: json['ifUseTemplate'] as bool? ?? false,
      musicId: json['musicId'] as String?,
      musicUrl: json['musicUrl'] as String?,
      photoList: json['photoJson'] == null
          ? const []
          : const String2ListJsonConverter()
              .fromJson(json['photoJson'] as String),
      template: json['diyAppTemplateDetailVO'] == null
          ? null
          : TemplateModel.fromJson(
              json['diyAppTemplateDetailVO'] as Map<String, dynamic>),
      instanceList: (json['pageInstanceList'] as List<dynamic>?)
              ?.map((e) =>
                  PageInstanceJsonModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      templateJson: json['templateJson'] as String?,
      deliveryType: $enumDecodeNullable(
              _$DeliveryTypeEnumMap, json['deliveryType'],
              unknownValue: DeliveryType.express) ??
          DeliveryType.express,
      shareUrl: json['shareUrl'] as String?,
      status: json['status'] as int?,
      isDeleted: json['isDeleted'] == null
          ? false
          : const Int2BoolJsonConverter().fromJson(json['isDeleted'] as int),
      createTime: _$JsonConverterFromJson<String, DateTime?>(
          json['createTime'], const DateTimeJsonConverter().fromJson),
      updateTime: _$JsonConverterFromJson<String, DateTime?>(
          json['updateTime'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$$TemplateDetailModelImplToJson(
        _$TemplateDetailModelImpl instance) =>
    <String, dynamic>{
      'templateId': instance.templateId,
      'studentAlbumId': instance.studentAlbumId,
      'albumContent': instance.content,
      'albumCoverUrl': instance.cover,
      'albumTag': _$CatalogTypeEnumMap[instance.catalogType]!,
      'albumTitle': instance.title,
      'backgroundStyle': _$HomepageStyleEnumMap[instance.homepageStyle]!,
      'backgroundUrl': instance.backgroundUrl,
      'studentId': instance.studentId,
      'studentName': instance.studentName,
      'studentCode': instance.studentCode,
      'yearTermCode': instance.yearTermCode,
      'schoolCode': instance.schoolCode,
      'classCode': instance.classCode,
      'gradeCode': instance.gradeCode,
      'courseCode': instance.courseCode,
      'phaseCode': instance.phaseCode,
      'hasConfig': instance.hasConfig,
      'ifBackgroundMusic': instance.useMusic,
      'ifNeedPay': instance.ifNeedPay,
      'payNotice': instance.payNotice,
      'paymentAmount': instance.price,
      'ifPotential': instance.ifPotential,
      'potentialStudentId': instance.potentialId,
      'printSupport': _$PrintSupportEnumMap[instance.printSupport]!,
      'ifUseTemplate': instance.ifUseTemplate,
      'musicId': instance.musicId,
      'musicUrl': instance.musicUrl,
      'photoJson': const String2ListJsonConverter().toJson(instance.photoList),
      'diyAppTemplateDetailVO': instance.template,
      'templateJson': instance.templateJson,
      'deliveryType': _$DeliveryTypeEnumMap[instance.deliveryType]!,
      'shareUrl': instance.shareUrl,
      'status': instance.status,
      'isDeleted': const Int2BoolJsonConverter().toJson(instance.isDeleted),
      'createTime': const DateTimeJsonConverter().toJson(instance.createTime),
      'updateTime': const DateTimeJsonConverter().toJson(instance.updateTime),
    };

const _$CatalogTypeEnumMap = {
  CatalogType.unknown: 'unknown',
  CatalogType.all: 'all',
  CatalogType.first: 'first',
  CatalogType.wonderful: 'wonderful',
  CatalogType.achievement: 'achievement',
  CatalogType.journal: 'journal',
  CatalogType.other: 'other',
};

const _$HomepageStyleEnumMap = {
  HomepageStyle.blank: -1,
  HomepageStyle.custom: 0,
  HomepageStyle.style1: 1,
  HomepageStyle.style2: 2,
  HomepageStyle.style3: 3,
  HomepageStyle.style4: 4,
};

const _$PrintSupportEnumMap = {
  PrintSupport.express: 1,
  PrintSupport.self: 2,
  PrintSupport.both: 3,
};

const _$DeliveryTypeEnumMap = {
  DeliveryType.selection: 0,
  DeliveryType.self: 1,
  DeliveryType.express: 2,
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

_$PaymentModelImpl _$$PaymentModelImplFromJson(Map<String, dynamic> json) =>
    _$PaymentModelImpl(
      paymentId: json['paymentId'] as int,
      studentAlbumId: json['studentAlbumId'] as String?,
      consignee: json['consignee'] as String? ?? '',
      mobile: json['consigneeMobile'] as String? ?? '',
      province: json['deliveryProvince'] as String? ?? '',
      city: json['deliveryCity'] as String? ?? '',
      area: json['deliveryArea'] as String? ?? '',
      address: json['deliveryAddress'] as String? ?? '',
    );

Map<String, dynamic> _$$PaymentModelImplToJson(_$PaymentModelImpl instance) =>
    <String, dynamic>{
      'paymentId': instance.paymentId,
      'studentAlbumId': instance.studentAlbumId,
      'consignee': instance.consignee,
      'consigneeMobile': instance.mobile,
      'deliveryProvince': instance.province,
      'deliveryCity': instance.city,
      'deliveryArea': instance.area,
      'deliveryAddress': instance.address,
    };

_$PurchaseReqImpl _$$PurchaseReqImplFromJson(Map<String, dynamic> json) =>
    _$PurchaseReqImpl(
      buyId: json['buyId'] as String?,
      studentAlbumId: json['studentAlbumId'] as String?,
      consignee: json['consignee'] as String? ?? '',
      mobile: json['consigneeMobile'] as String? ?? '',
      province: json['deliveryProvince'] as String? ?? '',
      city: json['deliveryCity'] as String? ?? '',
      area: json['deliveryArea'] as String? ?? '',
      address: json['deliveryAddress'] as String? ?? '',
      deliveryType: $enumDecodeNullable(_$DeliveryTypeEnumMap, json['sendType'],
              unknownValue: DeliveryType.self) ??
          DeliveryType.self,
    );

Map<String, dynamic> _$$PurchaseReqImplToJson(_$PurchaseReqImpl instance) =>
    <String, dynamic>{
      'buyId': instance.buyId,
      'studentAlbumId': instance.studentAlbumId,
      'consignee': instance.consignee,
      'consigneeMobile': instance.mobile,
      'deliveryProvince': instance.province,
      'deliveryCity': instance.city,
      'deliveryArea': instance.area,
      'deliveryAddress': instance.address,
      'sendType': _$DeliveryTypeEnumMap[instance.deliveryType]!,
    };

_$PurchaseResponseImpl _$$PurchaseResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PurchaseResponseImpl(
      billNo: json['billNo'] as String?,
    );

Map<String, dynamic> _$$PurchaseResponseImplToJson(
        _$PurchaseResponseImpl instance) =>
    <String, dynamic>{
      'billNo': instance.billNo,
    };

_$TemplateModelImpl _$$TemplateModelImplFromJson(Map<String, dynamic> json) =>
    _$TemplateModelImpl(
      cover: json['albumCoverUrl'] as String?,
      name: json['albumName'] as String? ?? '',
      homepageStyle: $enumDecodeNullable(
              _$HomepageStyleEnumMap, json['backgroundStyle'],
              unknownValue: HomepageStyle.blank) ??
          HomepageStyle.custom,
      transition: $enumDecodeNullable(
              _$PageTransitionTypeEnumMap, json['toggleEffect'],
              unknownValue: PageTransitionType.flip) ??
          PageTransitionType.flip,
      customBackgroundUrl: json['backgroundUrl'] as String?,
      music: json['ifBackgroundMusic'] as bool? ?? false,
      potentialEnable: json['ifSuitPotential'] as bool? ?? false,
      isDeleted: json['isDeleted'] == null
          ? false
          : const Int2BoolJsonConverter().fromJson(json['isDeleted'] as int),
      musicId: json['musicId'] as String?,
      musicUrl: json['musicUrl'] as String?,
      status: json['status'] as int?,
      templateId: json['templateId'] as String?,
      templateName: json['templateName'] as String? ?? '',
      usePeople: json['usePeople'] as int? ?? 0,
      pageList: (json['albumPageList'] as List<dynamic>?)
              ?.map(
                  (e) => TemplatePageModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createTime: _$JsonConverterFromJson<String, DateTime?>(
          json['createTime'], const DateTimeJsonConverter().fromJson),
      updateTime: _$JsonConverterFromJson<String, DateTime?>(
          json['updateTime'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$$TemplateModelImplToJson(_$TemplateModelImpl instance) =>
    <String, dynamic>{
      'albumCoverUrl': instance.cover,
      'albumName': instance.name,
      'backgroundStyle': _$HomepageStyleEnumMap[instance.homepageStyle]!,
      'toggleEffect': _$PageTransitionTypeEnumMap[instance.transition]!,
      'backgroundUrl': instance.customBackgroundUrl,
      'ifBackgroundMusic': instance.music,
      'ifSuitPotential': instance.potentialEnable,
      'isDeleted': const Int2BoolJsonConverter().toJson(instance.isDeleted),
      'musicId': instance.musicId,
      'musicUrl': instance.musicUrl,
      'status': instance.status,
      'templateId': instance.templateId,
      'templateName': instance.templateName,
      'usePeople': instance.usePeople,
      'createTime': const DateTimeJsonConverter().toJson(instance.createTime),
      'updateTime': const DateTimeJsonConverter().toJson(instance.updateTime),
    };

const _$PageTransitionTypeEnumMap = {
  PageTransitionType.none: 0,
  PageTransitionType.translate: 1,
  PageTransitionType.flip: 2,
  PageTransitionType.fade: 3,
};

_$BackendModuleModelImpl _$$BackendModuleModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BackendModuleModelImpl(
      moduleType:
          $enumDecodeNullable(_$ModuleTypeEnumMap, json['moduleType']) ??
              ModuleType.unknown,
      pics:
          (json['pics'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      text: json['text'] as String? ?? '',
    );

Map<String, dynamic> _$$BackendModuleModelImplToJson(
        _$BackendModuleModelImpl instance) =>
    <String, dynamic>{
      'moduleType': _$ModuleTypeEnumMap[instance.moduleType],
      'pics': instance.pics,
      'text': instance.text,
    };

const _$ModuleTypeEnumMap = {
  ModuleType.unknown: '',
  ModuleType.text: 'text',
  ModuleType.image: 'pics',
};

_$TemplatePageModelImpl _$$TemplatePageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TemplatePageModelImpl(
      pageIndex: json['albumTemplateType'] as int? ?? -1,
      pageId: json['pageId'] as String? ?? '-1',
      templateId: json['templateId'] as String?,
      picUrl: json['picUrl'] as String?,
      modules: (json['modules'] as List<dynamic>?)
              ?.map(
                  (e) => BackendModuleModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      original: json['appJsonObj'] == null
          ? null
          : PageJsonModel.fromJson(json['appJsonObj'] as Map<String, dynamic>),
      homepageStyle: $enumDecodeNullable(
              _$HomepageStyleEnumMap, json['backgroundStyle'],
              unknownValue: HomepageStyle.blank) ??
          HomepageStyle.custom,
      backgroundUrl: json['backgroundUrl'] as String?,
      isDeleted: json['isDeleted'] == null
          ? false
          : const Int2BoolJsonConverter().fromJson(json['isDeleted'] as int),
      status: json['status'] as int?,
      createTime: _$JsonConverterFromJson<String, DateTime?>(
          json['createTime'], const DateTimeJsonConverter().fromJson),
      updateTime: _$JsonConverterFromJson<String, DateTime?>(
          json['updateTime'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$$TemplatePageModelImplToJson(
        _$TemplatePageModelImpl instance) =>
    <String, dynamic>{
      'albumTemplateType': instance.pageIndex,
      'pageId': instance.pageId,
      'templateId': instance.templateId,
      'picUrl': instance.picUrl,
      'modules': instance.modules,
      'appJsonObj': instance.original,
      'backgroundStyle': _$HomepageStyleEnumMap[instance.homepageStyle]!,
      'backgroundUrl': instance.backgroundUrl,
      'isDeleted': const Int2BoolJsonConverter().toJson(instance.isDeleted),
      'status': instance.status,
      'createTime': const DateTimeJsonConverter().toJson(instance.createTime),
      'updateTime': const DateTimeJsonConverter().toJson(instance.updateTime),
    };

_$DiyProductModelImpl _$$DiyProductModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DiyProductModelImpl(
      title: json['title'] as String?,
      music: json['music'] == null
          ? null
          : MusicModel.fromJson(json['music'] as Map<String, dynamic>),
      template: json['template'] == null
          ? null
          : TemplateJsonModel.fromJson(
              json['template'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DiyProductModelImplToJson(
        _$DiyProductModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'music': instance.music,
      'template': instance.template,
    };

_$DiyPageReqImpl _$$DiyPageReqImplFromJson(Map<String, dynamic> json) =>
    _$DiyPageReqImpl(
      pageId: json['pageId'] as String?,
      pageIndex: json['albumTemplateType'] as int?,
      moduleJson: json['moduleJson'] as String?,
    );

Map<String, dynamic> _$$DiyPageReqImplToJson(_$DiyPageReqImpl instance) =>
    <String, dynamic>{
      'pageId': instance.pageId,
      'albumTemplateType': instance.pageIndex,
      'moduleJson': instance.moduleJson,
    };

_$DiyProductReqImpl _$$DiyProductReqImplFromJson(Map<String, dynamic> json) =>
    _$DiyProductReqImpl(
      templateId: json['templateId'] as String?,
      studentAlbumId: json['studentAlbumId'] as String?,
      content: json['albumContent'] as String?,
      catalogType: $enumDecodeNullable(_$CatalogTypeEnumMap, json['albumTag']),
      title: json['albumTitle'] as String?,
      cover: json['albumCoverUrl'] as String?,
      useMusic: json['ifBackgroundMusic'] as bool?,
      musicId: json['musicId'] as String?,
      photoList: (json['photoList'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      pageList: (json['pageList'] as List<dynamic>?)
          ?.map((e) => DiyPageReq.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DiyProductReqImplToJson(_$DiyProductReqImpl instance) =>
    <String, dynamic>{
      'templateId': instance.templateId,
      'studentAlbumId': instance.studentAlbumId,
      'albumContent': instance.content,
      'albumTag': _$CatalogTypeEnumMap[instance.catalogType],
      'albumTitle': instance.title,
      'albumCoverUrl': instance.cover,
      'ifBackgroundMusic': instance.useMusic,
      'musicId': instance.musicId,
      'photoList': instance.photoList,
      'pageList': instance.pageList,
    };

_$MusicModelImpl _$$MusicModelImplFromJson(Map<String, dynamic> json) =>
    _$MusicModelImpl(
      musicId: json['musicId'] as String?,
      title: json['musicName'] as String? ?? '',
      url: json['musicUrl'] as String?,
      status: json['status'] as int?,
      isDeleted: json['isDeleted'] == null
          ? false
          : const Int2BoolJsonConverter().fromJson(json['isDeleted'] as int),
      createTime: _$JsonConverterFromJson<String, DateTime?>(
          json['createTime'], const DateTimeJsonConverter().fromJson),
      updateTime: _$JsonConverterFromJson<String, DateTime?>(
          json['updateTime'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$$MusicModelImplToJson(_$MusicModelImpl instance) =>
    <String, dynamic>{
      'musicId': instance.musicId,
      'musicName': instance.title,
      'musicUrl': instance.url,
      'status': instance.status,
      'isDeleted': const Int2BoolJsonConverter().toJson(instance.isDeleted),
      'createTime': const DateTimeJsonConverter().toJson(instance.createTime),
      'updateTime': const DateTimeJsonConverter().toJson(instance.updateTime),
    };

_$PrintHistoryModelImpl _$$PrintHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PrintHistoryModelImpl(
      orderNo: json['orderNo'] as String?,
      studentAlbumId: json['studentAlbumId'] as String?,
      templateId: json['templateId'] as String?,
      title: json['albumTitle'] as String? ?? '',
      templateName: json['templateName'] as String? ?? '',
      studentCode: json['studentCode'] as String?,
      studentId: json['studentId'] as int?,
      potentialId: json['potentialStudentId'] as int?,
      billNo: json['billNo'] as String?,
      buyId: json['buyId'] as String?,
      studentName: json['studentName'] as String? ?? '',
      yearTermCode: json['yearTermCode'] as String?,
      schoolCode: json['schoolCode'] as String? ?? '',
      classCode: json['classCode'] as String? ?? '',
      gradeCode: json['gradeCode'] as String? ?? '',
      courseCode: json['courseCode'] as String? ?? '',
      phaseCode: json['phaseCode'] as String? ?? '',
      consignee: json['consignee'] as String? ?? '',
      deliveryType: $enumDecodeNullable(_$DeliveryTypeEnumMap, json['sendType'],
              unknownValue: DeliveryType.self) ??
          DeliveryType.self,
      mobile: json['consigneeMobile'] as String? ?? '',
      province: json['deliveryProvince'] as String? ?? '',
      city: json['deliveryCity'] as String? ?? '',
      area: json['deliveryArea'] as String? ?? '',
      address: json['deliveryAddress'] as String? ?? '',
      sendCode: json['sendTeacherCode'] as String?,
      sendName: json['sendTeacherName'] as String?,
      ifNeedPay: json['ifNeedPay'] as bool? ?? false,
      cover: json['albumCoverUrl'] as String?,
      ifPotential: json['ifPotential'] as bool? ?? false,
      payNotice: json['payNotice'] as String? ?? '',
      isPaid: json['payStatus'] == null
          ? false
          : const Int2BoolJsonConverter().fromJson(json['payStatus'] as int),
      parentPhone: json['parentPhone'] as String?,
      price: (json['payAmount'] as num?)?.toDouble() ?? 0.0,
      trackingNumber: json['trackingNumber'] as String?,
      remark: json['remark'] as String? ?? '',
      isSend: json['status'] == null
          ? false
          : const Int2BoolJsonConverter().fromJson(json['status'] as int),
      isDeleted: json['isDeleted'] == null
          ? false
          : const Int2BoolJsonConverter().fromJson(json['isDeleted'] as int),
      sendTime: _$JsonConverterFromJson<String, DateTime?>(
          json['sendTime'], const DateTimeJsonConverter().fromJson),
      buyTime: _$JsonConverterFromJson<String, DateTime?>(
          json['buyTime'], const DateTimeJsonConverter().fromJson),
      createTime: _$JsonConverterFromJson<String, DateTime?>(
          json['createTime'], const DateTimeJsonConverter().fromJson),
      updateTime: _$JsonConverterFromJson<String, DateTime?>(
          json['updateTime'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$$PrintHistoryModelImplToJson(
        _$PrintHistoryModelImpl instance) =>
    <String, dynamic>{
      'orderNo': instance.orderNo,
      'studentAlbumId': instance.studentAlbumId,
      'templateId': instance.templateId,
      'albumTitle': instance.title,
      'templateName': instance.templateName,
      'studentCode': instance.studentCode,
      'studentId': instance.studentId,
      'potentialStudentId': instance.potentialId,
      'billNo': instance.billNo,
      'buyId': instance.buyId,
      'studentName': instance.studentName,
      'yearTermCode': instance.yearTermCode,
      'schoolCode': instance.schoolCode,
      'classCode': instance.classCode,
      'gradeCode': instance.gradeCode,
      'courseCode': instance.courseCode,
      'phaseCode': instance.phaseCode,
      'consignee': instance.consignee,
      'sendType': _$DeliveryTypeEnumMap[instance.deliveryType]!,
      'consigneeMobile': instance.mobile,
      'deliveryProvince': instance.province,
      'deliveryCity': instance.city,
      'deliveryArea': instance.area,
      'deliveryAddress': instance.address,
      'sendTeacherCode': instance.sendCode,
      'sendTeacherName': instance.sendName,
      'ifNeedPay': instance.ifNeedPay,
      'albumCoverUrl': instance.cover,
      'ifPotential': instance.ifPotential,
      'payNotice': instance.payNotice,
      'payStatus': const Int2BoolJsonConverter().toJson(instance.isPaid),
      'parentPhone': instance.parentPhone,
      'payAmount': instance.price,
      'trackingNumber': instance.trackingNumber,
      'remark': instance.remark,
      'status': const Int2BoolJsonConverter().toJson(instance.isSend),
      'isDeleted': const Int2BoolJsonConverter().toJson(instance.isDeleted),
      'sendTime': const DateTimeJsonConverter().toJson(instance.sendTime),
      'buyTime': const DateTimeJsonConverter().toJson(instance.buyTime),
      'createTime': const DateTimeJsonConverter().toJson(instance.createTime),
      'updateTime': const DateTimeJsonConverter().toJson(instance.updateTime),
    };
