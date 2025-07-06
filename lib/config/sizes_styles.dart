import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UIDimensions {
  final bool useResponsive;
  const UIDimensions({required this.useResponsive});

  static final defaultInstance = UIDimensions(useResponsive: true);

  // Container & Dialog Sizes
  double get maxWidth => useResponsive ? 90.w : 90.0;
  double get maxHeight => useResponsive ? 30.h : 30.0;

  // Border Radius
  double get cornerRadius => useResponsive ? 12.r : 12.0;

  // Button Height
  double get buttonHeight => useResponsive ? 40.h : 40.0;
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

class ShadowStyles {
  static List<BoxShadow> get defaultShadow => [
    BoxShadow(
      color: Colors.black26.withAlpha((255 * 0.16).toInt()),
      blurRadius: 4.r,
      offset: Offset(0, 2.r),
    ),
  ];

  static List<BoxShadow> get subtleShadow => [
    BoxShadow(
      color: Colors.black26.withAlpha((255 * 0.08).toInt()),
      blurRadius: 2.r,
      offset: Offset(0, 1.r),
    ),
  ];

  static List<BoxShadow> get strongShadow => [
    BoxShadow(
      color: Colors.black26.withAlpha((255 * 0.32).toInt()),
      blurRadius: 8.r,
      offset: Offset(0, 4.r),
    ),
  ];
}

// ----------------------------
// Extension: for BuildContext
// Make accessing theme colors easier in widgets
// ----------------------------
extension UIParameters on BuildContext {
  // Colors
  Color get primary => Theme.of(this).colorScheme.primary;
  Color get onPrimary => Theme.of(this).colorScheme.onPrimary;
  Color get background => Theme.of(this).colorScheme.surface;
  Color get foreground =>
      Theme.of(this).textTheme.bodyMedium?.color ?? Colors.black26;
  Color get accent => Theme.of(this).colorScheme.secondary;
  Color get cardBackground => Theme.of(this).cardColor;

  // Dimensions
  double get cornerRadius => UIDimensions.defaultInstance.cornerRadius;
  double get maxWidth => UIDimensions.defaultInstance.maxWidth;
  double get maxHeight => UIDimensions.defaultInstance.maxHeight;
  double get buttonHeight => UIDimensions.defaultInstance.buttonHeight;

  // Text Sizes
  double get headline => AppTextSizes.defaultInstance.headline;
  double get subheading => AppTextSizes.defaultInstance.body;
  double get body => AppTextSizes.defaultInstance.body;
  double get small => AppTextSizes.defaultInstance.small;

  // Padding
  double get paddingSmall => AppSpacing.defaultInstance.paddingSmall;
  double get paddingMedium => AppSpacing.defaultInstance.paddingMedium;
  double get paddingLarge => AppSpacing.defaultInstance.paddingLarge;

  // Vertical Spacing
  double get verticalSmall => AppSpacing.defaultInstance.verticalSmall;
  double get verticalMedium => AppSpacing.defaultInstance.verticalMedium;
  double get verticalLarge => AppSpacing.defaultInstance.verticalLarge;

  // Button Sizes
  double get buttonMinHeight => AppSizes.defaultInstance.buttonMinHeight;
  double get buttonMaxWidth => AppSizes.defaultInstance.buttonMaxWidth;

  // Icon Sizes
  double get iconSizeSmall => AppSizes.defaultInstance.iconSizeSmall;
  double get iconSizeNormal => AppSizes.defaultInstance.iconSizeNormal;
}
