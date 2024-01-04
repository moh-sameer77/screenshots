import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zajel_app1/src/config/theme/sizes.dart';

import '../../../config/theme/theme.dart';


Container loginButton(BuildContext context, String routeName) {
  return Container(
    width: 0.5 * context.screenWidth,
    height: 0.07 * context.screenHeight,
    decoration: BoxDecoration(
      color: AppTheme.lightAppColors.secondary,
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: GestureDetector(
      onTap: () {
        Get.toNamed(routeName);
      },
      child: Center(
        child: Text(
          "Login",
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: AppTheme.lightAppColors.tertiary,
            ),
          ),
        ),
      ),
    ),
  );
}

Column onboardingText(String txt) {
  return Column(
    children: [
      if (txt.length > 30)
        ...[
          Text(
            txt.substring(0, 30),
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: AppTheme.lightAppColors.secondary,
              ),
            ),
          ),
          Text(
            txt.substring(30),
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: AppTheme.lightAppColors.secondary,
              ),
            ),
          ),
        ]
      else
        Text(
          txt,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: AppTheme.lightAppColors.secondary,
            ),
          ),
        ),
    ],
  );
}

loginLine(BuildContext context){
  return SizedBox(
      height: 0.007 * context.screenHeight ,
      width: 0.55 * context.screenWidth,
      child: ColoredBox(color: AppTheme.lightAppColors.secondary),
    );
}

smallSizedBox(BuildContext context){
  return SizedBox(
      height: 0.05 * context.screenHeight ,
    );
}
