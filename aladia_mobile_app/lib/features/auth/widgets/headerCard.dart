import 'package:aladia_mobile_app/features/auth/Bloc/theme_bloc.dart';
import 'package:aladia_mobile_app/features/auth/Bloc/theme_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HeaderCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final double logoSize;

  const HeaderCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    this.logoSize = 200, // Default size for the logo
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get screen size for responsive layout
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.all(16.0), // Padding inside the container
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white.withOpacity(0.2), // Border color
          width: 2, // Border width
        ),
        borderRadius: BorderRadius.circular(12), // Rounded corners
      ),
      child: Row(
        children: [
          // Logo on the left
          Image.asset(
            imagePath,
            width: logoSize, // Fixed width for the logo
            height: logoSize, // Fixed height for the logo
            fit: BoxFit.contain, // Ensure the image scales properly
          ),
          const SizedBox(width: 16), // Spacing between logo and text

          // Expanded widget to make the text occupy remaining space
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment:
                  MainAxisAlignment.start, // Align text to the top-right
              children: [
                // Title

                IconButton(
                  icon: Icon(Icons.brightness_6), // Icon for theme toggle
                  onPressed: () {
                    // Trigger the ToggleTheme event
                    context.read<ThemeBloc>().add(ToggleTheme());
                  },
                ),

                Text(
                  title,
                  style: TextStyle(
                    fontSize: screenWidth * 0.05, // 5% of screen width
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis, // Prevent text overflow
                ),
                const SizedBox(height: 4), // Spacing between title and subtitle
                // Subtitle
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: screenWidth *
                        0.035, // 3.5% of screen width for subtitle
                    color: Colors.white.withOpacity(0.8),
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis, // Prevent text overflow
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
