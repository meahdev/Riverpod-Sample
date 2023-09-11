
import 'package:api_sample/core/enum.dart';
import 'package:api_sample/presenation/dashboard/views/account_view.dart';
import 'package:api_sample/presenation/dashboard/views/home_view.dart';
import 'package:api_sample/presenation/dashboard/widget/bottom_navigation_widget.dart';
import 'package:api_sample/presenation/widgets/custom_icon.dart';
import 'package:flutter/material.dart';


class DashboardPage extends StatelessWidget {
   DashboardPage({super.key});
 final _pages = [
   const HomeView(),
   const AccountView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: ValueListenableBuilder(valueListenable: index, builder: (context, i,_){
        return _pages[i];
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
         backgroundColor: AppColor.grey.val,
        onPressed: (){

        },
        tooltip: "Add",
        child: const CustomIcon(Icons.add),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
