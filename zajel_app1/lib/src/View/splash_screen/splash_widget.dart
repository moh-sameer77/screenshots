import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zajel_app1/src/config/theme/sizes.dart';
import 'package:zajel_app1/src/config/constant/app_const.dart';


class SplashWidget extends StatelessWidget {
  const SplashWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
              Center(
                child: Image.asset(
                  AppConst.logo,
                  // height: 0.5 * context.screenHeight,
                  width: 0.7 * context.screenWidth,
                ),
              ),
      ],
    );
  }
}
