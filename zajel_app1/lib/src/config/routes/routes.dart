import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../View/splash_screen/splash_page.dart';
import 'package:zajel_app1/src/View/login/pages/login_page.dart';


class AppRoutes {
  static const String splashScreen = '/';
  static const String login = '/login';
  static const String mainPage = '/MainPage';
  static const String dashBoard = '/dashborad';

  static final List<GetPage> routes = [
    GetPage(
      name: splashScreen,
      page: () => const SplashPage(),
    ),
    GetPage(
      name: login,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: mainPage,
      page: () => const Scaffold(),
    ),
    GetPage(
      name: dashBoard,
      page: () => const Scaffold(),
    ),
  ];
}
