import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syggrel_connect/config/localization/texts.dart';
import 'package:syggrel_connect/config/screen_util_config.dart';
import 'package:syggrel_connect/config/app_theme.dart';
import 'package:syggrel_connect/pages/home_page.dart';
import 'app/app_widget.dart';
import '../app/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    ProviderScope(
      child: ScreenUtilInit(
        designSize: screenUtilConfig.designSize,
        minTextAdapt: screenUtilConfig.minTextAdapt,
        splitScreenMode: screenUtilConfig.splitScreenMode,
        builder: (context, child) => MaterialApp(
          title: Texts.appTitle,
          theme: AppTheme.appLightTheme,
          darkTheme: AppTheme.appDarkTheme,
          home: HomePage(),
        ),
      ),
    ),
  );
}
