import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zajel_app1/src/config/theme/theme.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key, required this.onTap, required this.title})
      : super(key: key);
  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 143.w,
        height: 60.h,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            color: AppTheme.lightAppColors.alternative),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: AppTheme.lightAppColors.secondary)),
          ),
        ),
      ),
    );
  }
}
