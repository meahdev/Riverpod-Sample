import 'package:api_sample/core/app_storage.dart';
import 'package:api_sample/presenation/widgets/custom_asset_image.dart';
import 'package:flutter/material.dart';
import '../../core/enum.dart';
import '../../core/routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final AppStorage _appStorage = AppStorage();
  @override
  void initState() {
    init();
    super.initState();
  }

  init() {
    Future.delayed(const Duration(seconds: 2), () {
     if(_appStorage.isLogin){
       Navigator.pushReplacementNamed(context, Routes.dashboard);
     }else{
       Navigator.pushReplacementNamed(context, Routes.login);
     }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: CustomAssetImage(
            path: PNG.logo.val,
          ),
        ),
      ),
    );
  }
}
