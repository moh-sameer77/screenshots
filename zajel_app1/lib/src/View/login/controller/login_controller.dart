import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:zajel_app1/src/config/theme/theme.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();
  final formkey = GlobalKey<FormState>();
  final rmkey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();

  validateEmail(String? email) {
    if (GetUtils.isEmail(email!)) {
      return null;
    }
    return 'Email is not vaild';
  }

  vaildatePassword(String? password) {
    if (!GetUtils.isLengthGreaterOrEqual(password, 6)) {
      return 'Password is not vaild';
    }
    return null;
  }

  signIn() async {
    // AuthenticationRepository().login(email.text.trim(), password.text.trim());
    password.clear();
  }

  Future onLogin() async {
    if (formkey.currentState!.validate()) {
      Future<bool> code = AuthenticationRepository()
          .login(email.text.trim(), password.text.trim());
      if (await code) {
        Get.snackbar("Success", "Login Successful",
            snackPosition: SnackPosition.BOTTOM,
            colorText: AppTheme.lightAppColors.mainTextcolor,
            backgroundColor: AppTheme.lightAppColors.primary);
      } else {
        Get.snackbar("ERROR", "Email or Password is invild",
            snackPosition: SnackPosition.BOTTOM,
            colorText: AppTheme.lightAppColors.mainTextcolor,
            backgroundColor: AppTheme.lightAppColors.tertiary);
      }
      return;
    } else {
      Get.snackbar("ERROR", "Email or Password is invild",
          snackPosition: SnackPosition.BOTTOM,
          colorText: AppTheme.lightAppColors.mainTextcolor,
          backgroundColor: AppTheme.lightAppColors.tertiary);
    }
  }
}

class AuthenticationRepository {
  Future<bool> login(String trim, String trim2) {
    Future<bool> code = true as Future<bool>;
    return  code ;
  }
}
