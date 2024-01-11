import 'package:flutter/material.dart';
import 'package:zajel_app1/src/config/theme/theme.dart';
import 'package:zajel_app1/src/custom_widgets/app_bar_2.dart';

import '../model/mail_model.dart';
import 'mail_details_widget.dart';

class MailDetailsPage extends StatelessWidget {
  final Mail mail;

  const MailDetailsPage({Key? key, required this.mail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar2(
          title: '',
          icon: const Icon(Icons.more_vert),
          onIcon1Pressed: () {
          },
        ),
        backgroundColor: AppTheme.lightAppColors.primary,
        body: MailDetailsWidget(mail: mail),
      ),
    );
  }
}
