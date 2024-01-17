import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zajel_app1/src/Features/outbox/view/outbox_widget.dart';
import 'package:zajel_app1/src/config/constant/app_const.dart';

import '../../../config/theme/theme.dart';
import '../../../custom_widgets/custom_app_bar.dart';
import '../../home/view/home_widget.dart';
import '../../inbox/view/inbox_widget.dart';
import '../controller/controller.dart';

class TapBarView extends StatelessWidget {
  const TapBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TapBarController>(
      init: TapBarController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppTheme.lightAppColors.background,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: CustomAppBar(
              username: AppConst.appBarUsername,
              onIcon1Pressed: () {
              },
              onIcon2Pressed: () {
              },
            ),
            bottom: TabBar(
              controller: controller.tabController,
              indicatorColor: AppTheme.lightAppColors
                  .secondary, // Set the color of the indicator line
              indicatorWeight: 3.0.h, // Set
              tabs: <Widget>[
                Tab(
                  icon: SizedBox(
                      width: double.infinity,
                      child: Image.asset(
                        "assets/home_icon.png",
                        height: 25.h,
                        width: 30.w,
                      )),
                ),
                Tab(
                  icon: SizedBox(
                      width: double.infinity,
                      child: Image.asset(
                        "assets/inbox_icon.png",
                        height: 25.h,
                        width: 30.w,
                      )),
                ),
                Tab(
                  icon: SizedBox(
                      width: double.infinity,
                      child: Image.asset(
                        "assets/outbox_icon.png",
                        height: 25.h,
                        width: 25.w,
                      )),
                ),
              ],
            ),
          ),
          body: TabBarView(
            controller: controller.tabController,
            children: const <Widget>[
              HomeWidget(),
              InboxWidget(),
              OutboxWidget()
            ],
          ),
        );
      },
    );
  }
}
