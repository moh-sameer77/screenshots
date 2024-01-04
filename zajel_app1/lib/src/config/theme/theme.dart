import 'package:flutter/material.dart';
import 'app_extension.dart';

class AppTheme {
  static final light = ThemeData.light().copyWith(
    extensions: [
      lightAppColors,
    ],
  );

  static final lightAppColors = AppColorsExtension(
    primary: const Color(0xffD7EAFA),
    secondary:const Color(0xff2C698D),
    background: const Color(0xffD7EAFA),
    alternative: const Color(0xffF9F5F0),
    tertiary: const Color(0xffffffff),
    subTextcolor: const Color(0xff565E64),
    mainTextcolor: const Color(0xff000000),
  );
}
