import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../login/view/pages/_login.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: theme.tertiary,
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Row(
                        children: [
                          Icon(
                            Icons.arrow_back_ios,
                            size: 15,
                            color: theme.primary,
                          ),
                          Text(
                            'Back',
                            style: TextStyle(
                                color: theme.primary,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: theme.primary.withOpacity(.13))),
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
                          'Sign up to see photos & videos of your friend',
                          maxLines: 2,
                          textAlign: TextAlign.center,
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
                            hint: "Name",
                            controller: _nameController,
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
                            hint: "Username",
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
                            hint: "Email",
                            controller: _emailController,
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
                          height: 20,
                        ),
                        Text(
                          "By signing up, you agree to our Terms, Privacy Policy and Cookies Policy.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12,
                              color: theme.onTertiary.withOpacity(.5)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomButton(
                            height: 45,
                            width: 250,
                            label: "Sign up",
                            color: theme.primary,
                            labelColor: theme.onPrimary,
                            onTap: () {},
                            elevation: 2),
                      ],
                    ),
                    // child: ,
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
}
