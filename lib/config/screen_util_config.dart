// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class ScreenUtilConfig {
  // Private constructor to enforce singleton or controlled creation
  const ScreenUtilConfig._inner({
    required this.designSize,
    required this.minTextAdapt,
    required this.splitScreenMode,
  });

  // Singleton instance
  static final ScreenUtilConfig _default = ScreenUtilConfig._inner(
    designSize: const Size(388, 844),
    minTextAdapt: true,
    splitScreenMode: true,
  );
  // Factory to get the default config
  factory ScreenUtilConfig() => _default;

  final Size designSize;
  final bool minTextAdapt;
  final bool splitScreenMode;
}

// Constant export instance of the config
final screenUtilConfig = ScreenUtilConfig();
