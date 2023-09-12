
import 'package:api_sample/domain/core/api_client.dart';
import 'package:api_sample/domain/core/api_result.dart';
import 'package:api_sample/domain/core/error_handler.dart';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/dashbaord/i_home_repo.dart';
import '../../domain/dashbaord/model/home_response.dart';


/// providing homeRepositoryProvider which will globally available
final homeRepositoryProvider = Provider<HomeRepository>((ref) {
  final apiClient = ref.read(apiClientProvider);
  return HomeRepository(apiClient);
});

/// implementing Home api response
class HomeRepository implements IHomeRepo{
  ApiClient apiClient ;

  HomeRepository(this.apiClient);
  @override
  Future<ApiResult<HomeResponse>> getHomeResponse(int count) async{
    HomeResponse response;
    try{
       response = await apiClient.getHomeResponse(count);
    }catch(e){
      return ApiResult()..setException(ErrorHandler.dioException(error: e as DioException));
    }
    return ApiResult()..data= response;
  }
}