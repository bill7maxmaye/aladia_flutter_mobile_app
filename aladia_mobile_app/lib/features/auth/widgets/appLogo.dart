import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  final String logoPath;
  final double height;
  final double width;

  const AppLogo({
    super.key,
    required this.logoPath,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Image.asset(
        logoPath,
        fit: BoxFit.contain, // Ensure the image scales within the given size
      ),
    );
  }
}


// class AppLogo extends StatelessWidget {
//   final String logoPath;

//   const AppLogo({super.key, required this.logoPath});

//   @override
//   Widget build(BuildContext context) {
//     return Image.asset(
//       logoPath,
//       height: MediaQuery.of(context).size.width * 0.25,
//       width: MediaQuery.of(context).size.width * 0.25,
//     );
//   }
// }
