import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zajel_app1/src/View/outbox/view/widget/outbox_listview.dart';

import '../../../config/theme/theme.dart';

class OutboxWidget extends StatelessWidget {
  const OutboxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Outbox",
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
          child: OutboxListView(),
        ),
      ],
    );
  }
}
