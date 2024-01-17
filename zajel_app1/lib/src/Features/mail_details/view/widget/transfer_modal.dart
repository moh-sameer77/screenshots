import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zajel_app1/src/Features/mail_details/controller/mail_controller.dart';
import 'package:zajel_app1/src/Features/mail_details/view/widget/mail_button.dart';

import '../../../../config/theme/theme.dart';

class TransferDialog extends StatelessWidget {
  const TransferDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final mailController = Get.put(MailController());
    final items = ["Item 1", "Item 2", "Item 3", "Item 4"];

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
                children: buildItemTiles(items, mailController),
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MailButton(
                    title: "Cancel",
                    backgroundColor: AppTheme.lightAppColors.primary,
                    textColor: AppTheme.lightAppColors.secondary,
                    btnWidth: 100,
                    btnHeight: 35,
                    onPressed: () {
                      Navigator.of(context).pop();
                      mailController.selectedItems.clear();
                    }),
                MailButton(
                    title: "Transfer",
                    backgroundColor: AppTheme.lightAppColors.secondary,
                    textColor: AppTheme.lightAppColors.primary,
                    btnWidth: 100,
                    btnHeight: 35,
                    onPressed: () {
                      Navigator.of(context).pop();
                      mailController.selectedItems.clear();
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> buildItemTiles(List<String> items, MailController mailController) {
  return items.map((item) {
    return Obx(() => ListTile(
          title: Container(
            color: mailController.selectedItems.contains(item)
                ? AppTheme.lightAppColors.secondary
                : null,
            height: 50,
            width: 130,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                item,
                style: GoogleFonts.poppins(
                  color: AppTheme.lightAppColors.mainTextcolor,
                  fontSize: 16.0.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          onTap: () {
            mailController.toggleSelection(item);
            print(mailController.selectedItems);
          },
        ));
  }).toList();
}

void showTransferDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return const TransferDialog();
    },
  );
}
