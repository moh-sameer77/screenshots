import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zajel_app1/src/config/constant/app_const.dart';
import '../../../config/theme/theme.dart';
import 'home_list_view.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 25.h,),
         Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            AppConst.home,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: AppTheme.lightAppColors.mainTextcolor,
              ),
            ),
          ),
        ),
        const Expanded(
          child: HomeListView(),
        ),
      ],
    );
  }
}

