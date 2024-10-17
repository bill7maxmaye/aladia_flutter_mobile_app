import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {
  final String text;
  final String imagePath;
  final VoidCallback onPressed;

  const SocialLoginButton({
    Key? key,
    required this.text,
    required this.imagePath,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get screen width to make the button responsive
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: screenWidth * 0.8, // 80% of the screen width
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black, // Background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Rounded corners
            side: BorderSide(
                color: Colors.white.withOpacity(0.3)), // Light border
          ),
          padding:
              EdgeInsets.symmetric(vertical: 12), // Adjust padding for height
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Social Media Icon
            Image.asset(
              imagePath,
              width: 24, // Icon width
              height: 24, // Icon height
              fit: BoxFit.contain,
            ),
            SizedBox(width: 10), // Space between icon and text
            // Button Text
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16, // Text size
              ),
            ),
          ],
        ),
      ),
    );
  }
}
