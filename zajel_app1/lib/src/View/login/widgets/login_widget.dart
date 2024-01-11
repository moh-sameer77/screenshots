import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zajel_app1/src/config/constant/app_const.dart';
import 'package:zajel_app1/src/config/routes/routes.dart';
import 'package:zajel_app1/src/config/theme/sizes.dart';
import 'package:zajel_app1/src/config/theme/theme.dart';
import '../controller/login_controller.dart';
import '../model/login_model.dart';
import 'button_widget.dart';
import 'external_login_widget.dart';
import 'form_widget.dart';
import 'login_custom_widgets.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final controller = Get.put(LoginController());

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void clearText() {
    controller.email.clear();
    controller.password.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: controller.formkey,
          child: SizedBox(
            height: 0.75 *context.screenHeight,
            width: 0.9 * context.screenWidth,
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
              children: [
                SizedBox(
                  height: 0.03 * context.screenHeight,
                ),
          Image.asset(
            AppConst.logo,
            width: 0.55 * context.screenWidth,
            height: 0.1 * context.screenHeight,
          ),
                SizedBox(
                  height: 0.03 * context.screenHeight,
                ),
                mainText(AppConst.login),
                SizedBox(
                  height: 0.03 * context.screenHeight,
                ),
                textFieldLabel(AppConst.email),
                FormWidget(
                  login: Login(
                    enableText: false,
                    controller: controller.email,
                    hintText: AppConst.email,
                    icon: const Icon(Icons.email),
                    invisible: false,
                    validator: (email) => controller.validateEmail(email),
                    type: TextInputType.emailAddress,
                    onChange: null,
                    inputFormat: null,
                    onTap: () {},
                  ),
                  color: AppTheme.lightAppColors.secondary,
                ),
                SizedBox(
                  height: 0.03 * context.screenHeight,
                ),
                textFieldLabel(AppConst.password),
                FormWidget(
                  login: Login(
                    enableText: false,
                    controller: controller.password,
                    hintText: AppConst.password,
                    icon: const Icon(Icons.lock),
                    invisible: true,
                    validator: (password) =>
                        controller.vaildatePassword(password),
                    type: TextInputType.visiblePassword,
                    onChange: null,
                    inputFormat: null,
                    onTap: () {},
                  ),
                  color: AppTheme.lightAppColors.secondary,
                ),
                SizedBox(
                  height: 0.05 * context.screenHeight,
                ),
                ButtonWidget(
                    onTap: () => {
                          // controller.onLogin(),
                          dispose(),
                          clearText(),
                          Get.toNamed(AppRoutes.mainPage)
                        },
                    title: AppConst.login),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 0.1 * context.screenHeight,
        ),
        const LoginExternal(),
      ],
    );
  }
}
