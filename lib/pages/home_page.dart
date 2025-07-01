// Page content; UI layout, theming, localization
import 'package:flutter/material.dart';
import 'package:syggrel_connect/config/app_theme.dart';
import 'package:syggrel_connect/config/localization/texts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Texts.welcomeMessage,
          style: TextStyle(color: context.onPrimary),
        ),
        centerTitle: true,
        backgroundColor: context.primary,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(context.paddingMedium),
          child: Text(
            Texts.appDescription,
            style: TextStyle(
              fontSize: AppTextSizes.defaultInstance.headline,
              color: context.foreground,
            ),
          ),
        ),
      ),
    );
  }
}
