import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app_task/core/constants.dart';
import 'package:weather_app_task/core/di/di_manager.dart';
import 'core/navigator/app_navigator.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(designSize: Size(designWidth , designHight),
      builder:()=> MaterialApp(debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        routes: getIt<AppNavigator>().routs,navigatorKey:  getIt<AppNavigator>().navigationKey,
        initialRoute: '/',
      ),
    );
  }
}