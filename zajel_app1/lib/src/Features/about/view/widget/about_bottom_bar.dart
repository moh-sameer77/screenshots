import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zajel_app1/src/config/theme/theme.dart';


class AboutBottomBar extends StatelessWidget {
  const AboutBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0.h,
      color: AppTheme.lightAppColors.tertiary,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Image.asset("assets/e-tech_logo.png", width: 144.w,),
             Image.asset("assets/copyrights.png", width: 130.w,),
          ],
        ),
      ),
    );
  }
}
