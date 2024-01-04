import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zajel_app1/src/config/theme/theme.dart';

constDivider() {
  return Divider(
    thickness: 3,
    color: AppTheme.lightAppColors.background,
    indent: 20,
    endIndent: 30,
  );
}

mainText(String title) {
  return Center(
    child: Text(title.tr,
        style: GoogleFonts.poppins(
            textStyle: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w400,
                color: AppTheme.lightAppColors.mainTextcolor))),
  );
}

textFieldLabel(String title) {
  return Text(title.tr,
      style: GoogleFonts.poppins(
          textStyle: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.normal,
              color: AppTheme.lightAppColors.secondary)));
}


Container divder(double width, double left, double right) {
  return Container(
    height: 3.h,
    width: width,
    color: AppTheme.lightAppColors.secondary,
    margin: EdgeInsets.only(right: right, left: left),
  );
}


switchButton(bool light) {
  return Switch(
    value: light,
    activeColor: Colors.red,
    onChanged: (bool value) {},
  );
}


updateLanguage(Locale locale) {
  Get.back();
  Get.updateLocale(locale);
}

