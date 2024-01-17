import 'package:flutter/material.dart';
import 'package:zajel_app1/src/config/routes/routes.dart';
import 'package:zajel_app1/src/config/theme/sizes.dart';
import 'package:zajel_app1/src/config/constant/app_const.dart';

import 'on_boarding_text_widget.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 0.13 * context.screenHeight,
          ),
          Image.asset(
            AppConst.logo,
            width: 0.55 * context.screenWidth,
          ),
          smallSizedBox(context),
          loginLine(context),
          smallSizedBox(context),
          onboardingText(AppConst.onboardingText),
          SizedBox(
            height: 0.2 * context.screenHeight,
          ),
          loginButton(context, AppRoutes.login),
        ],
      ),
    );
  }
}
