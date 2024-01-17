import 'package:flutter/material.dart';
import 'package:zajel_app1/src/Features/about/view/about_widget.dart';
import 'package:zajel_app1/src/config/constant/app_const.dart';
import 'package:zajel_app1/src/config/theme/theme.dart';
import 'package:zajel_app1/src/custom_widgets/app_bar_2.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar2(
          title: 'About',
          icon: const Icon(Icons.share),
          onIcon1Pressed: () {},
        ),
        backgroundColor: AppTheme.lightAppColors.primary,
        body: AboutWidget(
          title: AppConst.aboutTitle,
          content: AppConst.aboutContent,
        ),
      ),
    );
  }
}