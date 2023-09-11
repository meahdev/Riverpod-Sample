
import 'package:flutter/material.dart';

class CustomAssetImage extends StatelessWidget {
  const CustomAssetImage({Key? key, required this.path, this.height, this.width, this.boxFit})
      : super(key: key);
  final double? height;
  final double? width;
  final String path;
  final BoxFit? boxFit;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
       path,
      height: height,
      width: width,
      fit:boxFit ,
    );
  }
}