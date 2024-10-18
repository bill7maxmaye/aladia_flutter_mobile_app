import 'package:aladia_mobile_app/features/auth/widgets/appLogo.dart';
import 'package:aladia_mobile_app/features/auth/widgets/divider.dart';
import 'package:aladia_mobile_app/features/auth/widgets/emailInputField.dart';
import 'package:aladia_mobile_app/features/auth/widgets/headerCard.dart';
import 'package:aladia_mobile_app/features/auth/widgets/primaryButton.dart';
import 'package:aladia_mobile_app/features/auth/widgets/socialLoginButton.dart';
import 'package:aladia_mobile_app/features/auth/widgets/termAndConditionText.dart';
import 'package:aladia_mobile_app/features/auth/widgets/welcomeText.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          // Scrollable content
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 16.0), // Responsive padding
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20), // Adjust spacing as needed
                HeaderCard(
                  imagePath: 'assets/images/aladia_logo.png',
                  title: 'Welcome Back',
                  subtitle: 'Create or access your account from here ',
                ),
                SizedBox(height: 30),
                Center(
                  child: Text(
                    "Enter your email",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ),
                SizedBox(height: 20),
                CustomInputField(
                  hintText: 'E-mail',
                  icon: Icons.email,
                  controller: emailController,
                ),
                SizedBox(height: 30),
                PrimaryButton(
                  text: 'Enter',
                  onPressed: () {
                    // Handle enter action
                  },
                ),
                SizedBox(height: 30),
                DividerOr(),
                SizedBox(height: 30),
                SocialLoginButton(
                  text: 'Sign in with Google',
                  imagePath: 'assets/images/google.png',
                  onPressed: () {
                    // Handle Google login
                  },
                ),
                SizedBox(height: 30),
                SocialLoginButton(
                  text: 'Sign in with Facebook',
                  imagePath: 'assets/images/facebook.png',
                  onPressed: () {
                    // Handle Facebook login
                  },
                ),
                SizedBox(height: 30),
                SocialLoginButton(
                  text: 'Sign in with Apple',
                  imagePath: 'assets/images/apple.png',
                  onPressed: () {
                    // Handle Apple login
                  },
                ),
                SizedBox(height: 30),
                TermsText(),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
