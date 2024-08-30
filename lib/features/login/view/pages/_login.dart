import 'package:connect/features/forgotpass/view/pages/_forgotpass.dart';
import 'package:connect/features/register/view/pages/_signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: theme.tertiary,
      body: SafeArea(
          child: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    border: Border.all(color: theme.primary.withOpacity(.13))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Connect',
                      style: GoogleFonts.pacifico(
                          color: theme.onTertiary, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Stay connected to your world',
                      style: TextStyle(
                        color: theme.onTertiary.withOpacity(.6),
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    CustomTextField(
                        textColor: theme.onTertiary,
                        hintColor: theme.onTertiary.withOpacity(.4),
                        height: 45,
                        width: 250,
                        hint: "Email or Username",
                        controller: _usernameController,
                        color: theme.primary.withOpacity(.2),
                        borderWidth: 1),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                        textColor: theme.onTertiary,
                        hintColor: theme.onTertiary.withOpacity(.4),
                        height: 45,
                        width: 250,
                        hint: "Password",
                        controller: _passwordController,
                        color: theme.primary.withOpacity(.2),
                        borderWidth: 1),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomButton(
                        height: 45,
                        width: 250,
                        label: "Log in",
                        color: theme.primary,
                        labelColor: theme.onPrimary,
                        onTap: () {},
                        elevation: 2),
                    const SizedBox(
                      height: 5,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPassword()));
                        },
                        child: const Text(
                          'Forgotten your password?',
                          style: TextStyle(fontSize: 13),
                        ))
                  ],
                ),
                // child: ,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                width: 300,
                decoration: BoxDecoration(
                    border: Border.all(color: theme.primary.withOpacity(.13))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: theme.onTertiary),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(fontSize: 13),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
}

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.height,
      required this.width,
      required this.label,
      required this.color,
      required this.labelColor,
      required this.onTap,
      required this.elevation});

  final double height;
  final double width;
  final String label;
  final Color color;
  final Color labelColor;
  final double elevation;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
              backgroundColor: color,
              elevation: elevation,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              foregroundColor: labelColor),
          child: Text(
            label,
          )),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.height,
      required this.width,
      required this.hint,
      required this.controller,
      required this.color,
      required this.borderWidth,
      required this.textColor,
      required this.hintColor});

  final double height;
  final double width;
  final String hint;
  final TextEditingController controller;
  final Color color;
  final double borderWidth;
  final Color textColor;
  final Color hintColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: color, width: borderWidth)),
      child: Center(
        child: TextField(
          controller: controller,
          style: TextStyle(fontSize: 12, color: textColor),
          decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(color: hintColor),
              border: InputBorder.none,
              focusedBorder: InputBorder.none),
        ),
      ),
    );
  }
}
