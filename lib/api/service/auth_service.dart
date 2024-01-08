import 'package:components/api/bsl_api.dart';
import 'package:components/model/auth_model.dart';
import 'package:components/model/bsl_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_service.g.dart';

class AuthRemoteService {
  late AuthRemoteApi api;

  AuthRemoteService(Dio dio) {
    api = _AuthRemoteApi(dio);
  }
}

@RestApi(baseUrl: "")
abstract class AuthRemoteApi {
  @POST('$dataPrefix/app/login')
  Future<BslResponse<AuthModel>> auth(
    @Body() AuthReq req,
    @CancelRequest() CancelToken? cancelToken,
  );

  @POST('$dataPrefix/app/student')
  Future<BslResponse<AuthModel>> regular(
    @Body() RegularReq req,
    @CancelRequest() CancelToken? cancelToken,
  );

  @GET('$dataPrefix/app/user')
  Future<BslResponse<UserModel>> fetchUserInfo(
    @CancelRequest() CancelToken? cancelToken,
  );

  @PUT('$dataPrefix/app/user')
  Future<BslResponse<EmptyObjectData>> updateUserInfo(
    @Body() UserUpdateReq body,
    @CancelRequest() CancelToken? cancelToken,
  );
}
