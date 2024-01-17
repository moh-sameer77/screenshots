import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MailButton extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color textColor;
  final double btnHeight;
  final double btnWidth;
  final VoidCallback onPressed;

  const MailButton({super.key, 
    required this.title,
    required this.backgroundColor,
    required this.textColor,
    required this.btnHeight,
    required this.btnWidth,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: btnHeight.h,
        width: btnWidth.w,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 16.0.sp,
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}