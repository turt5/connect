import 'package:connect/core/theming/_theme.dart';
import 'package:connect/features/splash/view/pages/_splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,));

    return MaterialApp(
      theme: AppTheme.getTheme(),
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
