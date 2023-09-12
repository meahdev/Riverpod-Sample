

import 'package:api_sample/core/app_storage.dart';
import 'package:api_sample/core/routes.dart';
import 'package:api_sample/application/login/login_state.dart';
import 'package:api_sample/infrastructure/login/login_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



/// implemented using state notifier
final loginNotifierProvider = StateNotifierProvider<LoginNotifier,LoginState>((ref) => LoginNotifier());

class LoginNotifier extends StateNotifier<LoginState> {
  AppStorage appStorage = AppStorage();
  LoginNotifier():super(LoginState());


  void checkAutoValidateMode(){
    if(state.autoValidateMode == AutovalidateMode.disabled){
      state.autoValidateMode =  AutovalidateMode.always;
    }
    state = state.copyWith(autoValidateMode: state.autoValidateMode);
  }


  void login(BuildContext context,{required WidgetRef ref, required String email, required String password}){
    state = state.copyWith(isLoading: true);
    final loginRepo = ref.read(loginRepositoryProvider);
    loginRepo.login(email: email, password: password, count: 2).then((value) {
      state.loginResponse = value.data;
      state = state.copyWith(isLoading: false,loginResponse: state.loginResponse);
       if(value.getException != null){
         // ErrorHandler errorHandler = value.getException;
         //  // errorHandler.getErrorMessage
         /// show SnackBar
       }
      else if(state.loginResponse?.results != null){
        appStorage.setLogin(true);
        Navigator.pushReplacementNamed(context, Routes.dashboard);
      }else{
        /// show SnackBar
      }

    });

  }

}