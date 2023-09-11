

import 'package:flutter/material.dart';

import '../../core/enum.dart';

class CustomButton extends StatelessWidget {
  final double borderWidth;
  final double borderRadius;
  final void Function()? onPressed;
  final void Function()? onLongPress;
  final double? height;
  final bool autofocus;
  final String? text;
  final double? elevation;
  final Color? color;
  final Color? borderColor;
  final bool isLoading;
  final bool enableFeedback;

  const CustomButton({
    Key? key,
    required this.text,
    this.enableFeedback= true,
    this.borderWidth = 1.0,
    this.borderRadius = 5.0,
    required this.onPressed,
    this.onLongPress,
    this.height,
    this.autofocus = false,
    this.elevation,
    this.color,
    this.borderColor,
    this.isLoading = false,

  })  :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return
         MaterialButton(
          enableFeedback: enableFeedback,
          autofocus: autofocus,
          onPressed: onPressed,
          onLongPress: onLongPress,
          elevation:  elevation,
          highlightElevation: 0.0,
          focusElevation: 0.0,
          colorBrightness: Theme.of(context).brightness,
          color: color ,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: BorderSide(
              width: borderWidth,
              color: borderColor??Colors.transparent
            ),
          ),
          height: height,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              isLoading
                  ? buildProgress()
                  : Flexible(
                child: Text(
                  text!,
                  style: TextStyle(color: AppColor.white.val, fontSize: FS.font18.val),
                ),
              )
            ],
          )
    );
  }
}

buildProgress() {
  return SizedBox(
    height: DBL.twenty.val,
    width: DBL.twenty.val,
    child: CircularProgressIndicator(
      color: AppColor.white.val,
      strokeWidth: DBL.three.val,
    ),
  );
}






