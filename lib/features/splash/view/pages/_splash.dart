import 'package:connect/features/login/view/pages/_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: theme.tertiary,
        statusBarIconBrightness: Brightness.light));

    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });

    return Scaffold(
      backgroundColor: theme.tertiary,
      body: SafeArea(
          child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/icons8-connect-48.png',
              // color: theme.onPrimary,
              width: 45,
              height: 45,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'Connect',
              style: GoogleFonts.pacifico(
                  fontSize: 25,
                  // fontWeight: FontWeight.bold,
                  color: theme.onTertiary),
            ),
          ],
        ),
      )),
    );
  }
}
