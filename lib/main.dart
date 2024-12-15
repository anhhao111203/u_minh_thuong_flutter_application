import 'package:flutter/material.dart';
import 'package:u_minh_thuong_app/onboarding_screen.dart';
import 'package:u_minh_thuong_app/sign_in_screen.dart';
import 'package:u_minh_thuong_app/sign_up_screen.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/onboarding', // Initial page
      routes: {
        '/onboarding': (context) => OnboardingScreen(),
        '/sign-in': (context) => SignInScreen(),
        '/sign-up': (context) => SignUpScreen()
      },
      home: OnboardingScreen(),
    ),
  );
}




