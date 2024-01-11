import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../config/theme/theme.dart';

Text mailText(String txt) {
  if (txt.length >= 150) {
    return Text(
      "${txt.substring(0, 150)} ....",
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: AppTheme.lightAppColors.subTextcolor,
        ),
      ),
    );
  } else {
    return Text(
      "$txt ....",
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: AppTheme.lightAppColors.subTextcolor,
        ),
      ),
    );
  }
}
