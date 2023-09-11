import 'package:api_sample/domain/dashbaord/model/home_response.dart';
import 'package:flutter/material.dart';

class HomeState {
  HomeState(
      {this.homeResponse,
        this.isLoading = false,});

   HomeResponse? homeResponse;
   bool isLoading;


  HomeState copyWith(
      {HomeResponse? homeResponse,
      bool? obscure,
      bool? isLoading,
      AutovalidateMode? autoValidateMode}) {
    return HomeState(
        homeResponse: homeResponse ?? this.homeResponse,
        isLoading: isLoading??this.isLoading,
       );
  }
}
