import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:syggrel_connect/config/screen_util_config.dart';
import 'package:syggrel_connect/config/app_theme.dart';
import 'package:syggrel_connect/config/localization/texts.dart';

class SYggRelConnectApp extends StatelessWidget {
  final ScreenUtilConfig screenUtilConfig;
  final GoRouter router;

  const SYggRelConnectApp({
    super.key,
    required this.screenUtilConfig,
    required this.router,
  });

  // Private method to build MaterialApp
  Widget _buildMaterialApp(BuildContext context) {
    // Optional: Add splash screen or other logic here
    return MaterialApp.router(
      routerConfig: router,
      title: Texts.appTitle,
      theme: AppTheme.appLightTheme,
      darkTheme: AppTheme.appDarkTheme,
      debugShowCheckedModeBanner: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: screenUtilConfig.designSize,
      minTextAdapt: screenUtilConfig.minTextAdapt,
      splitScreenMode: screenUtilConfig.splitScreenMode,
      builder: (context, child) {
        return _buildMaterialApp(context);
      },
    );
  }
}
