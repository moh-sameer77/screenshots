import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../config/theme/theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String username;
  final VoidCallback onIcon1Pressed;
  final VoidCallback onIcon2Pressed;

  const CustomAppBar({
    Key? key,
    required this.username,
    required this.onIcon1Pressed,
    required this.onIcon2Pressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      leading: IconButton(
        icon: const CircleAvatar(
          backgroundImage: AssetImage('assets/profile_image.png'),
          backgroundColor: Colors.transparent,
        ),
        onPressed: () {
         
        },
      ),
      title: Row(
        children: [
          //  SizedBox(width: 8.w),
          Expanded(
            child: Text(
              username,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.normal,
                  color: AppTheme.lightAppColors.mainTextcolor,
                ),
              ),
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            // Add your logic for the first icon tap
            onIcon1Pressed();
          },
        ),
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            // Add your logic for the second icon tap
            onIcon2Pressed();
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}