import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zajel_app1/src/View/mail_details/controller/mail_controller.dart';

import '../../../../config/theme/theme.dart';

class TransferDialog extends StatelessWidget {
  const TransferDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final mailController = Get.put(MailController());
    return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    ListTile(
                      title: Obx(() => Container(
                            color: mailController.isItemSelected.value
                                ? Colors.blue.withOpacity(0.3)
                                : null,
                            height: 50,
                            width: 130,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                "Item 1",
                                style: GoogleFonts.poppins(
                                  color: AppTheme.lightAppColors.mainTextcolor,
                                  fontSize: 16.0.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          )),
                      onTap: () {
                        mailController.toggleSelection("item1");
                        print(mailController.selectedItems);
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Cancel'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Transfer'),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

void showTransferDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return const TransferDialog();
    },
  );
}
