import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syggrel_connect/config/screen_util_config.dart';
import 'package:syggrel_connect/widgets/app_widget.dart';
import 'package:syggrel_connect/app/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    ProviderScope(
      child: SYggRelConnectApp(
        screenUtilConfig: screenUtilConfig,
        router: router,
      ),
    ),
  );
}
