
import 'package:api_sample/core/logger.dart';
import 'package:api_sample/domain/core/api_client.dart';
import 'package:api_sample/domain/core/api_result.dart';
import 'package:api_sample/domain/core/error_handler.dart';
import 'package:api_sample/domain/login/i_login_repo.dart';
import 'package:api_sample/domain/login/model/login_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


/// providing loginRepositoryProvider which will globally available

final loginRepositoryProvider = Provider<LoginRepository>((ref) {
  final apiClient = ref.read(apiClientProvider);
  return LoginRepository(apiClient);
});

/// implementing Login api response

class LoginRepository implements ILoginRepo{
  final ApiClient apiClient;

  LoginRepository(this.apiClient);


  @override
  Future<ApiResult<LoginResponse>> login({required String email, required String password,required int count}) async{
    LoginResponse response;
    try{
      response = await apiClient.login(count);
    }catch(e){
      Logger.log(functionName: "LoginRepository",msg: e.toString());
      return ApiResult()..setException(ErrorHandler.dioException(error: e as DioException));
    }
    return ApiResult()..data=response;
  }
}