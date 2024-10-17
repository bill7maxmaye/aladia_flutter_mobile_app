import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  final String logoPath;

  const AppLogo({super.key, required this.logoPath});

  @override
  Widget build(BuildContext context) {
    return Image.asset(logoPath,
        height: 100, width: 100); // Adjust dimensions as needed
  }
}
