import 'package:flutter/material.dart';
import 'package:zajel_app1/src/View/about/view/about_widget.dart';
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
          onIcon1Pressed: () {
          },
        ),
        backgroundColor: AppTheme.lightAppColors.primary,
        body: const AboutWidget(title: "What is Zajel ?",content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sit amet consectetur adipiscing elit duis tristique. Enim lobortis scelerisque fermentum dui faucibus in ornare. Faucibus vitae aliquet nec ullamcorper sit amet risus nullam. Risus feugiat in ante metus dictum. Iaculis at erat pellentesque adipiscing commodo elit at imperdiet. Adipiscing tristique risus nec feugiat in. Nibh praesent tristique magna sit amet purus gravida. Egestas diam in arcu cursus euismod quis viverra nibh cras. Tincidunt nunc pulvinar sapien et ligula ullamcorper. Rhoncus mattis rhoncus urna neque viverra justo nec. Quisque non tellus orci ac. Cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris. Sed tempus urna et pharetra.",),
      ),
    );
  }
}
