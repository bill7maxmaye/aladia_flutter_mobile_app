import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  final String title;
  final String subtitle;

  const WelcomeText({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the screen width for responsive font sizing
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: screenWidth * 0.06, // 6% of screen width for title size
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 8),
        Text(
          subtitle,
          style: TextStyle(
            fontSize:
                screenWidth * 0.04, // 4% of screen width for subtitle size
            color: Colors.white.withOpacity(0.8),
          ),
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
