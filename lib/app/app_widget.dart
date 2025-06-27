import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../config/config.dart';

class SonipresenceApp extends StatelessWidget {
  final ScreenUtilConfig screenUtilConfig;
  final GoRouter router;

  const SonipresenceApp({
    super.key,
    required this.screenUtilConfig,
    required this.router,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: screenUtilConfig.designSize,
      minTextAdapt: screenUtilConfig.minTextAdapt,
      splitScreenMode: screenUtilConfig.splitScreenMode,
      builder: (context, child) {
        return MaterialApp.router(
          routerConfig: router,
          title: 'Sonipresence',
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
