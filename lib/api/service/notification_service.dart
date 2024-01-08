import 'package:bsl/api/bsl_api.dart';
import 'package:bsl/model/bsl_response.dart';
import 'package:bsl/model/notification_models.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'notification_service.g.dart';

class NotificationRemoteService {
  late NotificationRemoteApi api;

  NotificationRemoteService(Dio dio) {
    api = _NotificationRemoteApi(dio);
  }
}

@RestApi(baseUrl: "")
abstract class NotificationRemoteApi {
  /// 查询通知分类
  @POST('$businessPrefix/app/message/selectGroupMessage')
  Future<BslResponse<List<NotificationCategoryModel>>>
      fetchNotificationCategory(
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 查询通知列表
  @GET('$businessPrefix/app/message/pagMessageList')
  Future<BslResponse<BslPageResponse<List<NotificationModel>>>>
      fetchNotificationList(
    /// 当前页
    @Query('current') int current,

    /// 业务类型
    @Query('messageType') String messageType,

    /// 每页数量
    @Query('size') int size,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 查询通知详情
  @GET('$businessPrefix/app/message/getDetail')
  Future<BslResponse<NotificationModel>> fetchNotificationById(
    @Query('messageId') int messageId,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 查询通知确认详情
  @POST(forwardPostApi)
  Future<BslResponse<NotificationConfirmModel>> fetchNotificationConfirm({
    @Query('uri') String uri = '/api/sso/queryNoticeTargetOneApi',
    @Query('env') String env = 'jiaowu',
    @Body() required NotificationConfirmReq req,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 阅读系统通知
  @POST('$businessPrefix/app/message/readMsg')
  Future<BslResponse<EmptyObjectData>> readSystemNotification(
    @Query('messageId') int messageId,
    @CancelRequest() CancelToken? cancelToken,
  );

  /// 教务通知确认(阅读/签名)
  @POST(forwardPostApi)
  Future<BslResponse<EmptyObjectData>> submitNotification({
    @Query('uri') String uri = '/api/sso/confirmNoticeTarget',
    @Query('env') String env = 'jiaowu',
    @Body() required NotificationSubmitReq req,
    @CancelRequest() CancelToken? cancelToken,
  });

  /// 根据业务类型阅读全部通知
  @POST('$businessPrefix/app/message/readAllMsg')
  Future<BslResponse<EmptyObjectData>> readAllNotificationByType(
    @Query('messageType') String messageType,
    @CancelRequest() CancelToken? cancelToken,
  );
}
