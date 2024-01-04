
import 'package:flutter/material.dart';
import '../../../config/theme/theme.dart';
import '../widgets/on_boarding_widget.dart';

class OnBoardPage extends StatelessWidget {
  const OnBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppTheme.lightAppColors.background,
      body: const OnBoardingWidget(),
    ));
  }
}
