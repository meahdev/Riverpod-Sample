
import 'package:api_sample/core/enum.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ErrorHandler implements Exception {
  String _errorMessage = "";

  ErrorHandler( this._errorMessage);

  ErrorHandler.dioException({required DioException error}) {
    _handleErrorAndCode(error);
  }

  getErrorMessage() {
    return _errorMessage;
  }

  _handleErrorAndCode(DioException error) {
    ErrorHandler serverError;

    switch (error.type) {
      case DioExceptionType.cancel:
        _errorMessage = AppString.requestCancelled.val;
        serverError =  ErrorHandler(_errorMessage);
        break;
      case DioExceptionType.connectionTimeout:

        if(kReleaseMode){
          _errorMessage = AppString.somethingWentWrong.val;
        }else{
          _errorMessage = AppString.connectionTimeOut.val;
        }
        serverError =  ErrorHandler(_errorMessage);
        break;
      case DioExceptionType.receiveTimeout:
         if(kReleaseMode){
           _errorMessage = AppString.somethingWentWrong.val;
         }else{
           _errorMessage = AppString.receiveTimeOutInConnection.val;
         }

        serverError =  ErrorHandler(_errorMessage);
        break;
      case DioExceptionType.badResponse:
        if(kReleaseMode){
          _errorMessage = AppString.somethingWentWrong.val;
        }else{
          _errorMessage = "Bad request";
        }
        serverError =  ErrorHandler( _errorMessage);
        break;
      case DioExceptionType.unknown:
        int ?errorCode = error.response?.statusCode;
        /// token is expired show alert or something here
        if(errorCode == 401){
          if(kReleaseMode){
            _errorMessage = AppString.sessionExpired.val;
          }else{
            _errorMessage = AppString.unAuthorized.val;
          }
        }
        if (error.response != null && error.response!.statusMessage!.isNotEmpty) {
          try {
             if(kReleaseMode){
               _errorMessage = AppString.somethingWentWrong.val;
             }else{
               _errorMessage = error.response!.data['message'].toString();
             }

          } catch (e) {
            _errorMessage = AppString.somethingWentWrong.val;
          }
        } else {
          _errorMessage =AppString.somethingWentWrong.val;
        }
        serverError = ErrorHandler( _errorMessage);
        break;
      case DioExceptionType.sendTimeout:
        if(kReleaseMode){
          _errorMessage = AppString.connectionTimeOut.val;
        }else{
          _errorMessage = AppString.receiveTimeOutInSendRequest.val;
        }
        serverError = ErrorHandler( _errorMessage);
        break;
      case DioExceptionType.connectionError:
        _errorMessage = AppString.noInternetConnection.val;
        serverError = ErrorHandler( _errorMessage);
        break;
      default:
        _errorMessage = error.response?.statusMessage??AppString.somethingWentWrong.val;
        serverError = ErrorHandler( _errorMessage);
        break;
    }
    return serverError;
  }
}