import 'package:api_sample/core/app_storage.dart';
import 'package:api_sample/core/enum.dart';
import 'package:api_sample/presenation/dashboard/dashbaord_page.dart';
import 'package:api_sample/presenation/login/login_page.dart';
import 'package:api_sample/presenation/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/routes.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await AppStorage().init();
  runApp(const ProviderScope(
      child: MyApp(),
    ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.grey,
          scaffoldBackgroundColor: AppColor.white.val,
          inputDecorationTheme: buildInputDecorationTheme(),
          buttonTheme: buildButtonThemeData(),
          textTheme: textTheme(context)),
      title: 'Material App',
      initialRoute: Routes.splash,
      routes: {
        Routes.splash: (_) => const SplashPage(),
        Routes.dashboard: (_) =>  DashboardPage(),
        Routes.login: (_) => const LoginPage()
      },
    );
  }

  TextTheme textTheme(BuildContext context) {
    return GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        );
  }

  ButtonThemeData buildButtonThemeData() {
    return ButtonThemeData(
          padding: EdgeInsets.symmetric(vertical: DBL.fifteen.val),
          textTheme: ButtonTextTheme.primary, // Text color for buttons
          buttonColor: AppColor.green.val, // Button background color
          disabledColor: Colors.grey, // Disabled button color
        );
  }

  InputDecorationTheme buildInputDecorationTheme() {
    return InputDecorationTheme(
            labelStyle: TextStyle(color: AppColor.grey.val),
            border: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)),
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.grey)) // Label text col// Label text color
            );
  }
}
