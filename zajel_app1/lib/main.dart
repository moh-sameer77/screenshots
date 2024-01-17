import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


import 'src/config/routes/routes.dart';
import 'src/config/theme/theme.dart';


void main() async {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: const Size(360, 690),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (context, child) {
         return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zajel App',
      theme: AppTheme.light,
      locale: const Locale('en', 'US'),
      initialRoute: AppRoutes.splashScreen,
      getPages: AppRoutes.routes,
    );
            
      },
    );
  }
}

