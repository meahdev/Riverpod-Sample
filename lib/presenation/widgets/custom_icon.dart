
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon(this.iconData,{this.size, this.color,super.key});
 final IconData iconData;
 final double?size;
 final Color?color;

  @override
  Widget build(BuildContext context) {
    return Icon(iconData,size: size,color: color,);
  }
}
