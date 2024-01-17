import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zajel_app1/src/config/theme/theme.dart';

class HomeRowWidget extends StatelessWidget {
  final Widget img;
  final String title;
  final VoidCallback action;

  const HomeRowWidget({
    Key? key,
    required this.img,
    required this.title,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        action();
      },
      splashColor: Colors.grey, // Adjust the splash color
      highlightColor: Colors.transparent, // No highlight color
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    img,
                    SizedBox(width: 15.0.w),
                    Text(
                      title,
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
              ],
            ),
          ),
          Container(
            width: double.infinity, 
            height: 1, 
            color: const Color(0xffc0d3e0),
          ),
        ],
      ),
    );
  }
}
