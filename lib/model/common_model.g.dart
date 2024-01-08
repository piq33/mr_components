// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConfigModelImpl _$$ConfigModelImplFromJson(Map<String, dynamic> json) =>
    _$ConfigModelImpl(
      downloadUrl: json['env.app.version'] as String? ?? '',
      h5Prefix: json['env.app.kindh5.prefix'] as String? ?? '',
      qrCode: json['env.app.version.qrcode'] as String? ?? '',
      androidDownload: json['app.version.url'] as String? ?? '',
      iosDownload: json['app.ios.url'] as String? ?? '',
    );

Map<String, dynamic> _$$ConfigModelImplToJson(_$ConfigModelImpl instance) =>
    <String, dynamic>{
      'env.app.version': instance.downloadUrl,
      'env.app.kindh5.prefix': instance.h5Prefix,
      'env.app.version.qrcode': instance.qrCode,
      'app.version.url': instance.androidDownload,
      'app.ios.url': instance.iosDownload,
    };

_$SafeAreaConfigImpl _$$SafeAreaConfigImplFromJson(Map<String, dynamic> json) =>
    _$SafeAreaConfigImpl(
      left: (json['left'] as num?)?.toDouble() ?? 0,
      top: (json['top'] as num?)?.toDouble() ?? 0,
      right: (json['right'] as num?)?.toDouble() ?? 0,
      bottom: (json['bottom'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$SafeAreaConfigImplToJson(
        _$SafeAreaConfigImpl instance) =>
    <String, dynamic>{
      'left': instance.left,
      'top': instance.top,
      'right': instance.right,
      'bottom': instance.bottom,
    };

_$SelectedRegionImpl _$$SelectedRegionImplFromJson(Map<String, dynamic> json) =>
    _$SelectedRegionImpl(
      province: json['province'] == null
          ? null
          : RegionModel.fromJson(json['province'] as Map<String, dynamic>),
      city: json['city'] == null
          ? null
          : RegionModel.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SelectedRegionImplToJson(
        _$SelectedRegionImpl instance) =>
    <String, dynamic>{
      'province': instance.province,
      'city': instance.city,
    };

_$RegionModelImpl _$$RegionModelImplFromJson(Map<String, dynamic> json) =>
    _$RegionModelImpl(
      code: json['code'] as String?,
      name: json['name'] as String?,
      children: (json['children'] as List<dynamic>?)
              ?.map((e) => RegionModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$RegionModelImplToJson(_$RegionModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'children': instance.children,
    };

_$DictModelImpl _$$DictModelImplFromJson(Map<String, dynamic> json) =>
    _$DictModelImpl(
      id: const String2IntJsonConverter()
          .fromJson(json['dictDataId'] as String),
      code: json['dictDataCode'] as String? ?? '',
      value: json['dictValue'] as String? ?? '',
      engValue: json['dictEngValue'] as String? ?? '',
      remark: json['remark'] as String? ?? '',
      seq: json['seq'] == null
          ? 0
          : const String2IntJsonConverter().fromJson(json['seq'] as String),
    );

Map<String, dynamic> _$$DictModelImplToJson(_$DictModelImpl instance) =>
    <String, dynamic>{
      'dictDataId': const String2IntJsonConverter().toJson(instance.id),
      'dictDataCode': instance.code,
      'dictValue': instance.value,
      'dictEngValue': instance.engValue,
      'remark': instance.remark,
      'seq': const String2IntJsonConverter().toJson(instance.seq),
    };

_$KindergartenReqImpl _$$KindergartenReqImplFromJson(
        Map<String, dynamic> json) =>
    _$KindergartenReqImpl(
      province: json['province'] as String?,
      city: json['city'] as String?,
    );

Map<String, dynamic> _$$KindergartenReqImplToJson(
        _$KindergartenReqImpl instance) =>
    <String, dynamic>{
      'province': instance.province,
      'city': instance.city,
    };

_$KindergartenWrapperImpl _$$KindergartenWrapperImplFromJson(
        Map<String, dynamic> json) =>
    _$KindergartenWrapperImpl(
      region: RegionModel.fromJson(json['region'] as Map<String, dynamic>),
      schools: (json['schools'] as List<dynamic>)
          .map((e) => KindergartenModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$KindergartenWrapperImplToJson(
        _$KindergartenWrapperImpl instance) =>
    <String, dynamic>{
      'region': instance.region,
      'schools': instance.schools,
    };

_$KindergartenModelImpl _$$KindergartenModelImplFromJson(
        Map<String, dynamic> json) =>
    _$KindergartenModelImpl(
      schoolName: json['schoolName'] as String?,
      schoolCode: json['schoolCode'] as String?,
      province: json['province'] as String?,
      city: json['city'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$$KindergartenModelImplToJson(
        _$KindergartenModelImpl instance) =>
    <String, dynamic>{
      'schoolName': instance.schoolName,
      'schoolCode': instance.schoolCode,
      'province': instance.province,
      'city': instance.city,
      'address': instance.address,
    };

_$PromotionModelImpl _$$PromotionModelImplFromJson(Map<String, dynamic> json) =>
    _$PromotionModelImpl(
      schoolCode: json['schoolCode'] as String,
      schoolName: json['schoolName'] as String? ?? '',
      province: json['province'] as String?,
      city: json['city'] as String?,
      address: json['address'] as String?,
      contentType: json['contentType'] == null
          ? ContentType.unknown
          : const ContentTypeJsonConverter()
              .fromJson(json['contentType'] as int),
      imgStr: json['picture'] as String?,
      url: json['url'] as String?,
      introduce: json['introduce'] as String? ?? '',
      teacherIntroduce: json['teacherIntroduce'] as String? ?? '',
      remark: json['remark'] as String? ?? '',
      updateUserName: json['updateUserName'] as String?,
    );

Map<String, dynamic> _$$PromotionModelImplToJson(
        _$PromotionModelImpl instance) =>
    <String, dynamic>{
      'schoolCode': instance.schoolCode,
      'schoolName': instance.schoolName,
      'province': instance.province,
      'city': instance.city,
      'address': instance.address,
      'contentType':
          const ContentTypeJsonConverter().toJson(instance.contentType),
      'picture': instance.imgStr,
      'url': instance.url,
      'introduce': instance.introduce,
      'teacherIntroduce': instance.teacherIntroduce,
      'remark': instance.remark,
      'updateUserName': instance.updateUserName,
    };

_$SendSmsCodeReqImpl _$$SendSmsCodeReqImplFromJson(Map<String, dynamic> json) =>
    _$SendSmsCodeReqImpl(
      mobile: json['mobile'] as String,
    );

Map<String, dynamic> _$$SendSmsCodeReqImplToJson(
        _$SendSmsCodeReqImpl instance) =>
    <String, dynamic>{
      'mobile': instance.mobile,
    };

_$SendSmsCodeModelImpl _$$SendSmsCodeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SendSmsCodeModelImpl(
      mobile: json['mobile'] as String,
      sendResult: json['sendResult'] as bool? ?? false,
    );

Map<String, dynamic> _$$SendSmsCodeModelImplToJson(
        _$SendSmsCodeModelImpl instance) =>
    <String, dynamic>{
      'mobile': instance.mobile,
      'sendResult': instance.sendResult,
    };

_$UploadFileImpl _$$UploadFileImplFromJson(Map<String, dynamic> json) =>
    _$UploadFileImpl(
      local: json['local'] as String? ?? '',
      asset: _$JsonConverterFromJson<String, AssetEntity?>(
          json['asset'], const AssetEntityJsonConverter().fromJson),
      remote: json['remote'] as String? ?? '',
      temp: json['temp'] as bool? ?? false,
      type:
          $enumDecodeNullable(_$FileTypeEnumMap, json['type']) ?? FileType.none,
      uploaded: json['uploaded'] ?? false,
    );

Map<String, dynamic> _$$UploadFileImplToJson(_$UploadFileImpl instance) =>
    <String, dynamic>{
      'remote': instance.remote,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$FileTypeEnumMap = {
  FileType.none: 'none',
  FileType.image: 'image',
  FileType.video: 'video',
  FileType.audio: 'audio',
  FileType.file: 'file',
};

_$AdsModelImpl _$$AdsModelImplFromJson(Map<String, dynamic> json) =>
    _$AdsModelImpl(
      id: json['id'] as int,
      imgUrl: json['imgUrl'] as String,
      title: json['title'] as String? ?? '',
      seq: json['seq'] as int? ?? 0,
    );

Map<String, dynamic> _$$AdsModelImplToJson(_$AdsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imgUrl': instance.imgUrl,
      'title': instance.title,
      'seq': instance.seq,
    };

_$WeekdayRangeImpl _$$WeekdayRangeImplFromJson(Map<String, dynamic> json) =>
    _$WeekdayRangeImpl(
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$$WeekdayRangeImplToJson(_$WeekdayRangeImpl instance) =>
    <String, dynamic>{
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
    };

_$ResourceModelImpl _$$ResourceModelImplFromJson(Map<String, dynamic> json) =>
    _$ResourceModelImpl(
      type: json['type'] == null
          ? FileType.none
          : const String2ResourceTypeJsonConverter()
              .fromJson(json['type'] as String),
      url: json['url'] as String? ?? '',
    );

Map<String, dynamic> _$$ResourceModelImplToJson(_$ResourceModelImpl instance) =>
    <String, dynamic>{
      'type': const String2ResourceTypeJsonConverter().toJson(instance.type),
      'url': instance.url,
    };

_$ResourceWrapperImpl _$$ResourceWrapperImplFromJson(
        Map<String, dynamic> json) =>
    _$ResourceWrapperImpl(
      url: json['url'] as String,
      isVideo: json['isVideo'] as bool,
      heroTag: json['heroTag'] as String,
    );

Map<String, dynamic> _$$ResourceWrapperImplToJson(
        _$ResourceWrapperImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'isVideo': instance.isVideo,
      'heroTag': instance.heroTag,
    };

_$ContactReqImpl _$$ContactReqImplFromJson(Map<String, dynamic> json) =>
    _$ContactReqImpl(
      studentName: json['studentName'] as String?,
      parentName: json['parentName'] as String?,
      contactNumber: json['contactNumber'] as String?,
      studentBirthDate: json['studentBirthDate'] as String?,
      channelLv1: json['channelLv1'] as String?,
      channelLv2: json['channelLv2'] as String?,
      schoolCode: json['schoolCode'] as String?,
    );

Map<String, dynamic> _$$ContactReqImplToJson(_$ContactReqImpl instance) =>
    <String, dynamic>{
      'studentName': instance.studentName,
      'parentName': instance.parentName,
      'contactNumber': instance.contactNumber,
      'studentBirthDate': instance.studentBirthDate,
      'channelLv1': instance.channelLv1,
      'channelLv2': instance.channelLv2,
      'schoolCode': instance.schoolCode,
    };

_$AppVersionModelImpl _$$AppVersionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AppVersionModelImpl(
      downloadUrl: json['downloadUrl'] as String? ?? '',
      forceUpdate: json['forceUpdateFlag'] as bool? ?? false,
      hasUpdate: json['hasUpdate'] as bool? ?? false,
      latestVersion: json['latestVersionNo'] as int? ?? 0,
      uploadTime: _$JsonConverterFromJson<String, DateTime?>(
          json['uploadTime'], const DateTimeJsonConverter().fromJson),
      versionDesc: json['versionDesc'] as String? ?? '',
    );

Map<String, dynamic> _$$AppVersionModelImplToJson(
        _$AppVersionModelImpl instance) =>
    <String, dynamic>{
      'downloadUrl': instance.downloadUrl,
      'forceUpdateFlag': instance.forceUpdate,
      'hasUpdate': instance.hasUpdate,
      'latestVersionNo': instance.latestVersion,
      'uploadTime': const DateTimeJsonConverter().toJson(instance.uploadTime),
      'versionDesc': instance.versionDesc,
    };

_$H5NativeRouteImpl _$$H5NativeRouteImplFromJson(Map<String, dynamic> json) =>
    _$H5NativeRouteImpl(
      route: json['page'] as String?,
      exit: json['exit'] as bool? ?? false,
      parameters: json['parameters'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$H5NativeRouteImplToJson(_$H5NativeRouteImpl instance) =>
    <String, dynamic>{
      'page': instance.route,
      'exit': instance.exit,
      'parameters': instance.parameters,
    };

_$TencentCloudCredentialsImpl _$$TencentCloudCredentialsImplFromJson(
        Map<String, dynamic> json) =>
    _$TencentCloudCredentialsImpl(
      tmpSecretId: json['tmpSecretId'] as String?,
      tmpSecretKey: json['tmpSecretKey'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$TencentCloudCredentialsImplToJson(
        _$TencentCloudCredentialsImpl instance) =>
    <String, dynamic>{
      'tmpSecretId': instance.tmpSecretId,
      'tmpSecretKey': instance.tmpSecretKey,
      'token': instance.token,
    };

_$TencentCloudTempTokenImpl _$$TencentCloudTempTokenImplFromJson(
        Map<String, dynamic> json) =>
    _$TencentCloudTempTokenImpl(
      expiration: json['expiration'] == null
          ? null
          : DateTime.parse(json['expiration'] as String),
      expiredTime: json['expiredTime'] as int? ?? 0,
      requestId: json['requestId'] as String?,
      credentials: json['credentials'] == null
          ? null
          : TencentCloudCredentials.fromJson(
              json['credentials'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TencentCloudTempTokenImplToJson(
        _$TencentCloudTempTokenImpl instance) =>
    <String, dynamic>{
      'expiration': instance.expiration?.toIso8601String(),
      'expiredTime': instance.expiredTime,
      'requestId': instance.requestId,
      'credentials': instance.credentials,
    };
