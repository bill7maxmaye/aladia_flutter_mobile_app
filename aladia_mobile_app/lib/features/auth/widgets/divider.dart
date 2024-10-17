import 'package:flutter/material.dart';

class DividerOr extends StatelessWidget {
  const DividerOr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Left Side Gradient (from narrow to wider)
        Expanded(
          child: Container(
            height: 3,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.0), // Narrow (low opacity)
                  Colors.white.withOpacity(0.5), // Wider (higher opacity)
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
        ),
        // "Or" Text in the Middle
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            "Or",
            style: TextStyle(color: Colors.white),
          ),
        ),
        // Right Side Gradient (from wider to narrow)
        Expanded(
          child: Container(
            height: 3,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.5), // Wider (higher opacity)
                  Colors.white.withOpacity(0.0), // Narrow (low opacity)
                ],
                begin: Alignment.centerLeft, // Start wider
                end: Alignment.centerRight, // End narrow
              ),
            ),
          ),
        ),
      ],
    );
  }
}
