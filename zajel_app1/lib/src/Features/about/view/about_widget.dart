import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../config/theme/theme.dart';
import 'widget/about_bottom_bar.dart';

class AboutWidget extends StatelessWidget {
  final String title;
  final String content;
  const AboutWidget({Key? key, required this.title, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.h,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w500,
                          color: AppTheme.lightAppColors.mainTextcolor,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h,),
                    Text(
                      content,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: AppTheme.lightAppColors.mainTextcolor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
             const AboutBottomBar() 
        ],
      ),
    );
  }
}
