import 'package:flutter/material.dart';
import 'package:zajel_app1/src/config/theme/theme.dart';

import '../widgets/login_widget.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.lightAppColors.tertiary,
        body: const SingleChildScrollView(
          child: LoginWidget(),
        ),
      ),
    );
  }
}
