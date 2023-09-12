import 'dart:async';

import 'package:api_sample/domain/dashbaord/model/home_response.dart';
import 'package:api_sample/infrastructure/dashbaord/home_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/core/error_handler.dart';

///implemented by AsyncNotifierProvider
final homeNotifierProvider = AsyncNotifierProvider<HomeController, List<Results>>(() {
  return HomeController();
});
class HomeController extends AsyncNotifier<List<Results>>{
  @override
  FutureOr<List<Results>> build() {
   return getHomeData();
  }

  Future<List<Results>> getHomeData() async{
    final homeRepo = ref.read(homeRepositoryProvider);
    state = const AsyncLoading();
    final result = await homeRepo.getHomeResponse(10);
    if(result.getException !=null){
      ErrorHandler errorHandler = result.getException;
      state = AsyncError(errorHandler.getErrorMessage(),errorHandler.getErrorMessage() as StackTrace );
    }else{
      state = AsyncData(result.data?.results??[]);
    }
    final list = state.value??[];
    return list;
  }

}