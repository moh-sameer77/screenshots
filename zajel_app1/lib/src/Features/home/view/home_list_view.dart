import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../about/view/about_page.dart';
import '../../tapbar/controller/controller.dart';
import 'home_row_widget.dart';

class HomeListView extends StatelessWidget {
  const HomeListView({super.key});

  @override
  Widget build(BuildContext context) {
    TapBarController tapBarController = Get.find<TapBarController>();

    return ListView(
      children: [
        HomeRowWidget(
          img: Image.asset("assets/inbox_icon.png", height: 25.w, width: 25.h),
          title: 'Inbox',
          action:(){tapBarController.tabController.animateTo(1);} 
,
        ),
        HomeRowWidget(
          img: Image.asset("assets/outbox_icon.png", height: 25.w, width: 25.h),
          title: 'Outbox',
          action:(){tapBarController.tabController.animateTo(2);} 

        ),
        HomeRowWidget(
          img: Image.asset("assets/trash_icon.png", height: 25.w, width: 25.h),
          title: 'Trash',
          action:(){} 

        ),
        HomeRowWidget(
          img: Image.asset("assets/about_icon.png", height: 25.w, width: 25.h),
          title: 'About Zajel',
          action:(){ Get.to(const AboutPage());} 

        ),
        HomeRowWidget(
          img: Image.asset("assets/logout_icon.png", height: 25.w, width: 25.h),
          title: 'Log Out',
          action:(){} 

        ),
      ],
    );
  }
}
