

import 'package:api_sample/core/enum.dart';
import 'package:api_sample/presenation/widgets/custom_icon.dart';
import 'package:flutter/material.dart';

ValueNotifier<int> index = ValueNotifier(0);
class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: index, builder: (context, i ,_){
      return BottomNavigationBar(
        currentIndex: i,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColor.white.val,
        unselectedItemColor: AppColor.grey.val,
        backgroundColor: AppColor.black.val,
        onTap: (i){
          index.value = i;
        },
        items: [

          BottomNavigationBarItem(icon: const CustomIcon(Icons.home),label: AppString.home.val),
          BottomNavigationBarItem(icon: const CustomIcon(Icons.account_circle),label: AppString.home.val),
        ],


      );
    });
  }
}
