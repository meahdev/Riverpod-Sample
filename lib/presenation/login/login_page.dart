import 'package:api_sample/application/login/login_notiifer.dart';
import 'package:api_sample/presenation/widgets/custom_button.dart';
import 'package:api_sample/presenation/widgets/custom_sizedbox.dart';
import 'package:api_sample/presenation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/enum.dart';
import '../widgets/custom_asset_image.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _emailNode = FocusNode();
  final FocusNode _passwordNode = FocusNode();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _emailNode.dispose();
    _passwordNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _bodyView()
    );
  }

  SafeArea _bodyView() {
    return SafeArea(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: DBL.twenty.val),
      child: Consumer(
          builder: (BuildContext context, WidgetRef ref, Widget? child) {
            final loginNotifier = ref.watch(loginNotifierProvider);
          return Form(
            autovalidateMode: loginNotifier.autoValidateMode,
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomSizedBox(
                    height: DBL.twenty.val,
                  ),
                  CustomAssetImage(
                    path: PNG.logo.val,
                  ),
                  CustomSizedBox(
                    height: DBL.hundred.val,
                  ),
                  _emailView(),
                  CustomSizedBox(
                    height: DBL.fifteen.val,
                  ),
                  _passwordView(ref: ref,loginNotifier: loginNotifier),
                  CustomSizedBox(
                    height: DBL.forty.val,
                  ),
                  _signInView(ref: ref,loginNotifier: loginNotifier)
                ],
              ),
            ),
          );
        }
      ),
    ),
  );
  }

  CustomButton _signInView({required WidgetRef ref,var loginNotifier}) {
        return CustomButton(
          color: AppColor.green.val,
          isLoading: loginNotifier.isLoading,
          onPressed: () {
            _checkInputData(ref: ref,loginNotifier: loginNotifier);
          },
          text: AppString.signIn.val,
    );
  }

  CTextField _emailView() {
    return CTextField(
      controller: _emailController,
      focusNode: _emailNode,
      labelText: AppString.email.val,
      keyBoardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      validator: (value) {
        if (value!.trim().isEmpty) {
          return AppString.emptyEmail.val;
        } else if (!RegExp(r'^.+@[a-zA-Z]+\.?[a-zA-Z]+$')
            .hasMatch(value.trim())) {
          return AppString.inValidEmail.val;
        }
        return null;
      },
    );
  }

  CTextField _passwordView({required WidgetRef ref,var loginNotifier}) {
    return CTextField(
      controller: _passwordController,
      focusNode: _passwordNode,
      labelText: AppString.password.val,
      textInputAction: TextInputAction.done,
      keyBoardType: TextInputType.text,
      onSubmitted: (value){
        _checkInputData(ref: ref,loginNotifier: loginNotifier);
      },
      obscureText: true,
      validator: (value) {
        if (value!.trim().isEmpty) {
          return AppString.emptyPassword.val;
        }
        return null;
      },
    );
  }
  _checkInputData({required WidgetRef ref,required var loginNotifier}){
    ref.read(loginNotifierProvider.notifier).checkAutoValidateMode();

    if (_formKey.currentState!.validate()) {
      ref.read(loginNotifierProvider.notifier).login(context,
          ref: ref,
          email: _emailController.text.trim(),
          password: _passwordController.text.trim());
    }
  }
}
