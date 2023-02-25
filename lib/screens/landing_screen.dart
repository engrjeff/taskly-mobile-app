import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:taskly_mobile/core/primary_button.dart';
import 'package:taskly_mobile/screens/login_screen.dart';
import 'package:taskly_mobile/screens/signup_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Taskly',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset('lib/images/home_illustration.png'),
                ],
              ),
              const Spacer(),
              const Text(
                'Manage your daily task with ease',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Spacer(),
              PrimaryButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                text: 'Login',
              ),
              const Spacer(),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Does not have an account yet? ',
                        style: TextStyle(
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.grey.shade800,
                        ),
                      ),
                      TextSpan(
                        text: 'Create Account',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignupScreen(),
                              ),
                            );
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
