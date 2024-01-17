import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../config/theme/theme.dart';
import 'inbox_list_view.dart';

class InboxWidget extends StatelessWidget {
  const InboxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Inbox",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
                color: AppTheme.lightAppColors.mainTextcolor,
              ),
            ),
          ),
          
        ),
        SizedBox(height: 20.h,),
        const Expanded(
          child: InboxListView(),
        ),
      ],
    );
  }
}
