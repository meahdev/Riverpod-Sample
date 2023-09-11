import 'package:api_sample/domain/core/error_handler.dart';

class ApiResult<T> {
  ErrorHandler? _exception;
  T? data;

  setException(ErrorHandler error) {
    error = _exception!;
  }


  get getException {
    return _exception;
  }
}
