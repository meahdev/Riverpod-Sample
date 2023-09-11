import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/enum.dart';

class CTextField extends StatelessWidget {
  const CTextField({
    Key? key,
    required this.controller,
    this.textInputAction,
    this.focusNode,
    this.onChanged,
    this.obscureText = false,
    this.onSubmitted,
    this.keyBoardType,
    this.errorText,
    this.onIconTap,
    this.suffixIcon,
    this.prefixIcon,
    this.validator,
    this.hintText,
    this.labelText,
    this.fillColor,
    this.textAlignVertical,
    this.inputFormatter,
    this.isReadOnly = false,
    this.maxLength,
  })  : assert(controller != null),
        super(key: key);
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final bool? obscureText;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final TextInputType? keyBoardType;
  final String? errorText;
  final void Function()? onIconTap;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final String? hintText;
  final String? labelText;
  final Color? fillColor;
  final TextAlignVertical? textAlignVertical;
  final List<TextInputFormatter>? inputFormatter;
  final bool isReadOnly;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: textAlignVertical ?? TextAlignVertical.center,
      inputFormatters: inputFormatter ?? [],
      controller: controller,
      focusNode: focusNode,
      textInputAction: textInputAction,
      obscureText: obscureText!,
      onChanged: onChanged,
      onFieldSubmitted: onSubmitted,
      readOnly: isReadOnly,
      keyboardType: keyBoardType,
      decoration: buildInputDecoration(),
      validator: validator,
      maxLength: maxLength,
    );
  }

  InputDecoration buildInputDecoration() {
    return InputDecoration(
      contentPadding:
          EdgeInsets.symmetric(horizontal: DBL.zero.val, vertical: DBL.ten.val),
      counter: const Offstage(),
      hintText: hintText,
      labelText: labelText,
      suffixIconConstraints: BoxConstraints(minWidth: DBL.fifty.val),
      filled: true,
      fillColor: fillColor ?? AppColor.white.val,
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
      isDense: true,
      errorText: errorText,
    );
  }
}
