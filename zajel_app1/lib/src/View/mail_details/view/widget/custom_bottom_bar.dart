import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zajel_app1/src/View/mail_details/view/widget/mail_button.dart';
import 'package:zajel_app1/src/View/mail_details/view/widget/transfer_modal.dart';
import 'package:zajel_app1/src/config/theme/theme.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 195.0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset("assets/attachment_icon.png", height: 60.h ,width: 60.w,),
                    SizedBox(width: 10.w,),
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Attachment",
                          style: TextStyle(
                            color: AppTheme.lightAppColors.mainTextcolor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "3 MB",
                          style: TextStyle(
                            color: AppTheme.lightAppColors.secondary,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                 IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.file_download_outlined),
                  iconSize: 35.0, )

              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MailButton(title: "Transfer", backgroundColor: AppTheme.lightAppColors.primary, textColor: AppTheme.lightAppColors.secondary, onPressed: (){showTransferDialog(context);}),
                MailButton(title: "Actions", backgroundColor: AppTheme.lightAppColors.secondary, textColor: AppTheme.lightAppColors.tertiary, onPressed: (){ })
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
