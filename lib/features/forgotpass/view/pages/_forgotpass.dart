import 'package:connect/features/login/view/pages/_login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: theme.tertiary,
      body: SafeArea(
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
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  width: 300,
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: theme.primary.withOpacity(.13))),
                  child: Column(
                    children: [
                      Text(
                        'Connect',
                        style: GoogleFonts.pacifico(
                            color: theme.onTertiary, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Text(
                            'Enter your email address associated with your Connect account below to send a password reset link.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: theme.onTertiary.withOpacity(.6),
                                fontSize: 12)),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      CustomTextField(
                          height: 45,
                          width: 250,
                          hint: "Email",
                          controller: _emailController,
                          color: theme.primary.withOpacity(.2),
                          borderWidth: 1,
                          textColor: theme.onTertiary,
                          hintColor: theme.onPrimary.withOpacity(.5)),
                      const SizedBox(height: 10,),
                      CustomButton(height: 45, width: 250, label: "Send", color: theme.primary, labelColor: theme.onPrimary, onTap: (){}, elevation: 2)
                    ],
                  ))
            ],
          ))
        ],
      )),
    );
  }

  final TextEditingController _emailController =TextEditingController();
}
