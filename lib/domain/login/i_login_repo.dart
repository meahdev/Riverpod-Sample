
import 'package:api_sample/domain/core/api_result.dart';
import 'package:api_sample/domain/login/model/login_response.dart';


/// Login Api abstract class which will implement on LoginRepository

abstract class ILoginRepo{
  Future<ApiResult<LoginResponse>> login({required String email, required String password,required int count});
}