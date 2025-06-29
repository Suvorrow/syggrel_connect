import 'package:flutter/material.dart';
import '../config/app_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SYggRel Connect'),
        centerTitle: true,
        backgroundColor: context.primary,
      ),
      body: Center(
        child: Padding(
          'Welcome to SYggRel Connect',
          style: TextStyle(
            fontSize: AppTextSizes().headline,
            color: context.foreground,
          ),
        ),
      ),
    );
  }
}
