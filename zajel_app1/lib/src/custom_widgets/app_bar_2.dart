import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../config/theme/theme.dart';

class AppBar2 extends StatelessWidget implements PreferredSizeWidget {
  final String title; 
  final Icon icon;
  final VoidCallback onIcon1Pressed;



  const AppBar2({
    Key? key,
    required this.title,
    required this.icon,
    required this.onIcon1Pressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text(
        title,
        overflow: TextOverflow.ellipsis,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: AppTheme.lightAppColors.mainTextcolor,
          ),
        ),
      ),
      actions: [
        IconButton(
          icon: icon,
          onPressed: () {
            onIcon1Pressed();
          },
        ),

      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}