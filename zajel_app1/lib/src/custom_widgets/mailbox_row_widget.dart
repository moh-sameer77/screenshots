import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zajel_app1/src/config/theme/theme.dart';
import 'package:zajel_app1/src/View/mail_details/view/mail_details_page.dart';

import '../View/mail_details/model/mail_model.dart';
import '../View/inbox/view/widgets/inbox_text_widgets.dart';

class MailBoxRowWidget extends StatelessWidget {
  final Mail mail;

  const MailBoxRowWidget({
    Key? key,
    required this.mail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => MailDetailsPage(mail: mail));
      },
      splashColor: Colors.grey, // Adjust the splash color
      highlightColor: Colors.transparent, // No highlight color
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                mail.image,
                                height: 50.w,
                                width: 50.h,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    mail.name,
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppTheme.lightAppColors.subTextcolor,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    mail.subject,
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
                  ],
                ),
                mailText(mail.mailContent),
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
