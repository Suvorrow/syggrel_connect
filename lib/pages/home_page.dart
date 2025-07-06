// Page content; UI layout, theming, localization
import 'package:flutter/material.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:syggrel_connect/config/sizes_styles.dart';
import 'package:syggrel_connect/config/localization/texts.dart';
import 'package:syggrel_connect/widgets/permanent_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _deviceName = "Loading...";

  @override
  void initState() {
    super.initState();
    _getDeviceName();
  }

  Future<void _getDeviceName() async {
    try {
      final deviceInfo = DeviceInfoPlugin();
      final androidInfo = await deviceInfo.androidInfo;
      setState(() {
        _deviceName = androidInfo.model;
      });
    } catch (e) {
      setState(() {
        _deviceName = "Error retrieving device info";
      });
    }
  }

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PermanentWidget(
                title: Texts.myAndroidDeviceName,
                value: _deviceName,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
