import 'package:bsl/api/bsl_api.dart';
import 'package:bsl/model/bsl_response.dart';
import 'package:bsl/model/common_model.dart';
import 'package:bsl/model/navigation_model.dart';
import 'package:bsl/model/zhaojiao_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'common_service.g.dart';

class CommonRemoteService {
  late CommonRemoteApi api;

  CommonRemoteService(Dio dio) {
    api = _CommonRemoteApi(dio);
  }
}

@RestApi(baseUrl: "")
abstract class CommonRemoteApi {
  /// 获取环境配置
  @GET('$businessPrefix/app/sysParam/list')
  Future<BslResponse<ConfigModel>> fetchConfig({
    @Query('paramKey') required String paramKey,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 获取地区信息
  @GET(forwardGetApi)
  Future<ZhaoJiaoResponse<List<RegionModel>>> fetchRegion({
    @Query('uri') String uri = '/apis/bsmdata/view/dataChinaRegion/listTree',
    @Query('env') String env = 'zhaojiao',

    /// 省份名称
    @Query('provinceName') String? provinceName,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 获取统一字典
  @GET(forwardGetApi)
  Future<BslResponse<List<DictModel>>> fetchDictData({
    @Query('uri') String uri = '/v1/bsm/data/dictData/get',
    @Query('env') String env = 'zhaojiao',

    /// 字典类型
    @Query('dictCodeType') required String dictCodeType,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 发送验证码
  @POST('$dataPrefix/app/login/sendSmsCode')
  Future<BslResponse<SendSmsCodeModel>> sendSmsCode(
    @Body() SendSmsCodeReq req,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 获取app嵌入页面入口
  @GET('$dataPrefix/app/func_setting/{schoolCode}')
  Future<BslResponse<List<AppEntranceModel>>> fetchEntranceConfig(
    /// 潜客传入-1
    @Path('schoolCode') String schoolCode,

    /// 1 => 金刚区 2 => 正式生校园首页模块 3 => 底部菜单 4 => 快捷菜单
    @Query('itemType') int type,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 获取app轮播图
  @GET('$businessPrefix/app/adMng')
  Future<BslResponse<List<AdsModel>>> fetchAds(
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 获取腾讯云上传临时密钥
  @POST('$resourcePrefix/app/oss/endpoint/obtainTempSecretInfo')
  Future<BslResponse<TencentCloudTempToken?>> fetchUploadToken([
    @CancelRequest() CancelToken? cancelToken,
  ]);

  /// 单点登录H5页面时获取token
  @GET('$dataPrefix/app/login/getTicketForKindergarten')
  Future<BslResponse<String?>> fetchTicketForKindergarten(
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 根据省市查询园所列表
  @POST(forwardPostApi)
  Future<BslResponse<List<KindergartenModel>>> fetchKindergartenList({
    @Query('uri') String uri = '/v1/kindergarten/data/getSchoolInfoByCondition',
    @Query('env') String env = 'kindergarten',
    @Body() required KindergartenReq req,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 根据学校编码查询宣传信息
  @GET(forwardGetApi)
  Future<BslResponse<PromotionModel>> fetchPromotionBySchoolCode({
    @Query('uri')
    String uri = '/v1/kindergarten/data/getSchoolPromotionBySchoolCode',
    @Query('env') String env = 'kindergarten',
    @Query('schoolCode') required String schoolCode,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 提交联系方式
  @POST(forwardPostApi)
  Future<BslResponse<String>> addContact({
    @Query('uri') String uri = '/apis/bsmcore/potentialStudent/add?assignUser=false',
    @Query('env') String env = 'kindergarten',
    @Body() required ContactReq req,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 获取App版本
  @GET('$systemPrefix/app/version/checkAppVersion')
  Future<BslResponse<AppVersionModel>> fetchAppVersion(
    /// 系统类型，android或ios
    @Query('appOsType') String system,

    /// 当前版本号
    @Query('versionNo') String version,
    @CancelRequest() CancelToken? cancelToken,
  );
}
