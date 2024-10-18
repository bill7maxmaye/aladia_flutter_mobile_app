import 'package:aladia_mobile_app/features/auth/widgets/appLogo.dart';
import 'package:aladia_mobile_app/features/auth/widgets/welcomeText.dart';
import 'package:flutter/material.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0), // Padding inside the container
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12), // Rounded corners
        gradient: LinearGradient(
          colors: [
            Colors.black.withOpacity(0.8),
            Color.fromARGB(230, 63, 63, 63),
          ], // Black to transparent gradient
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center, // Align vertically
        children: const [
          // AppLogo (Logo)
          AppLogo(),
          SizedBox(width: 16), // Spacing between logo and text

          // Expanded to make text take the remaining space
          Expanded(
            child: WelcomeText(), // WelcomeText (Title and Subtitle)
          ),
        ],
      ),
    );
  }
}
