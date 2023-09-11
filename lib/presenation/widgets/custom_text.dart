

import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(this.label,{ this.style, this.maxLines,super.key});
  final String label;
  final TextStyle?style;
  final int ?maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(label, style: style, maxLines: maxLines,);
  }
}
