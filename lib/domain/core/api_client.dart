

import 'package:api_sample/domain/dashbaord/model/home_response.dart';
import 'package:api_sample/domain/login/model/login_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/http.dart';
part 'api_client.g.dart';


final apiClientProvider = Provider<ApiClient>((ref) =>ApiClient());

@RestApi(baseUrl: "https://randomuser.me")
abstract class ApiClient {

  factory ApiClient() {
    Dio dio = Dio();
    dio.options = BaseOptions(
      connectTimeout: const Duration(seconds: 3),
      receiveTimeout: const Duration(seconds: 5)
    );
    if(!kReleaseMode){
      dio.interceptors.add(PrettyDioLogger(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        error: true,
        compact: true,
        maxWidth: 500,
      ));
    }
    return _ApiClient(dio);
  }

  /// will display a list of values in dashboard
  @GET("/api/?")
  Future<HomeResponse> getHomeResponse(
      @Query("results") int count
      );
  ///for login testing purpose
  @GET("/api/?")
  Future<LoginResponse> login(
      @Query("results") int count
      );
}