import 'package:api_sample/domain/login/model/login_response.dart';
import 'package:flutter/material.dart';

class LoginState {
  LoginState(
      {this.loginResponse,
        this.isLoading = false,
      this.autoValidateMode = AutovalidateMode.disabled});

   LoginResponse? loginResponse;
   bool isLoading;
   AutovalidateMode autoValidateMode;

  LoginState copyWith(
      {LoginResponse? loginResponse,
      bool? obscure,
      bool? isLoading,
      AutovalidateMode? autoValidateMode}) {
    return LoginState(
        loginResponse: loginResponse ?? this.loginResponse,
        isLoading: isLoading??this.isLoading,
        autoValidateMode: autoValidateMode ?? this.autoValidateMode);
  }
}
