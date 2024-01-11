import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../config/theme/theme.dart';
import 'widget/custom_bottom_bar.dart';
import '../model/mail_model.dart';

class MailDetailsWidget extends StatelessWidget {
  final Mail mail;

  const MailDetailsWidget({Key? key, required this.mail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Image.asset(mail.image, height: 50.w, width: 50.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mail.name,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: AppTheme.lightAppColors.mainTextcolor,
                          ),
                        ),
                      ),
                      Text(
                        mail.email,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: AppTheme.lightAppColors.subTextcolor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),

                Text(
                  "${mail.time} h ago",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: AppTheme.lightAppColors.subTextcolor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mail.subject,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w500,
                          color: AppTheme.lightAppColors.mainTextcolor,
                        ),
                      ),
                    ),
                    Text(
                      mail.mailContent,
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
             CustomBottomBar() 
        ],
      ),
    );
  }
}
