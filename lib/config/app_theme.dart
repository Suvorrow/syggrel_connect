import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ----------------------------
// Theme Class
// ----------------------------
class AppTheme {
  final bool useResponsive;

  const AppTheme({required this.useResponsive});

  // Predefined themes
  static final appLightTheme = AppTheme(useResponsive: true).light;
  static final appDarkTheme = AppTheme(useResponsive: true).dark;

  // Light Theme
  ThemeData get light => ThemeData.light().copyWith(
    colorScheme: const ColorScheme.light().copyWith(
      primary: Colors.blueGrey,
      secondary: Colors.indigoAccent,
      surface: Color(0xFF363232),
      onSurface: Colors.white60,
    ),
    textTheme: _textTheme,
  );

  // Dark Theme
  ThemeData get dark => ThemeData.dark().copyWith(
    colorScheme: const ColorScheme.dark().copyWith(
      primary: Colors.white60,
      secondary: Colors.deepPurple,
      surface: Colors.black45,
      onSurface: Colors.white38,
    ),
    textTheme: _textTheme,
  );

  // Custom TextTheme
  static TextTheme get _textTheme {
    return const TextTheme(
      bodyMedium: TextStyle(color: Colors.yellow),
      titleLarge: TextStyle(fontSize: 20),
    );
  }
}

// ----------------------------
// Sizes for UI Elements
// ----------------------------
class AppSizes {
  final bool useResponsive;

  const AppSizes({required this.useResponsive});

  static final defaultInstance = AppSizes(useResponsive: true);

  // Button styles
  double get buttonMinHeight => useResponsive ? 60.h : 60.0;
  double get buttonMaxWidth => useResponsive ? 128.w : 128.0;

  // Icon sizes
  double get iconSizeSmall => useResponsive ? 18.w : 18.0;
  double get iconSizeNormal => useResponsive ? 24.w : 24.0;
}

// ---------------------------
// Text Size Definitions
// ---------------------------
class AppTextSizes {
  final bool useResponsive;

  const AppTextSizes({required this.useResponsive});

  static final defaultInstance = AppTextSizes(useResponsive: true);

  // Headlines
  double get headline => useResponsive ? 24.sp : 24.0;

  // Subheadings
  double get subheading => useResponsive ? 20.sp : 20.0;

  // Body Text
  double get body => useResponsive ? 16.sp : 16.0;

  // Small Text
  double get small => useResponsive ? 12.sp : 12.0;
}

// ----------------------------
// Padding & Spacing
// ----------------------------
class AppSpacing {
  final bool useResponsive;

  const AppSpacing({required this.useResponsive});

  static final defaultInstance = AppSpacing(useResponsive: true);

  // Padding
  double get paddingSmall => useResponsive ? 8.w : 8.0;
  double get paddingMedium => useResponsive ? 12.w : 12.0;
  double get paddingLarge => useResponsive ? 16.w : 16.0;

  // Margins
  double get marginSmall => useResponsive ? 8.w : 8.0;
  double get marginMedium => useResponsive ? 16.w : 16.0;
  double get marginLarge => useResponsive ? 24.w : 24.0;

  // Vertical spacing
  double get verticalSmall => useResponsive ? 4.h : 4.0;
  double get verticalMedium => useResponsive ? 8.h : 8.0;
  double get verticalLarge => useResponsive ? 12.h : 12.0;
}

// ----------------------------
// Extension: for BuildContext
// Make accessing theme colors easier in widgets
// ----------------------------
extension ThemeColors on BuildContext {
  Color get primary => Theme.of(this).colorScheme.primary;
  Color get background => Theme.of(this).colorScheme.surface;
  Color get foreground =>
      Theme.of(this).textTheme.bodyMedium?.color ?? Colors.black26;
  Color get accent => Theme.of(this).colorScheme.secondary;
  Color get cardBackground => Theme.of(this).cardColor;

  double get headline => AppTextSizes.defaultInstance.headline;
  double get subheading => AppTextSizes.defaultInstance.body;
  double get body => AppTextSizes.defaultInstance.body;
  double get small => AppTextSizes.defaultInstance.small;

  double get paddingSmall => AppSpacing.defaultInstance.paddingSmall;
  double get paddingMedium => AppSpacing.defaultInstance.paddingMedium;
  double get paddingLarge => AppSpacing.defaultInstance.paddingLarge;

  double get verticalSmall => AppSpacing.defaultInstance.verticalSmall;
  double get verticalMedium => AppSpacing.defaultInstance.verticalMedium;
  double get verticalLarge => AppSpacing.defaultInstance.verticalLarge;

  double get buttonMinHeight => AppSizes.defaultInstance.buttonMinHeight;
  double get buttonMaxWidth => AppSizes.defaultInstance.buttonMaxWidth;

  double get iconSizeSmall => AppSizes.defaultInstance.iconSizeSmall;
  double get iconSizeNormal => AppSizes.defaultInstance.iconSizeNormal;
}
