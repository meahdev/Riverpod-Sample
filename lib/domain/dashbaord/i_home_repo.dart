
import 'package:api_sample/domain/core/api_result.dart';

import 'model/home_response.dart';

abstract class IHomeRepo{
  Future<ApiResult<HomeResponse>> getHomeResponse( int count);
}