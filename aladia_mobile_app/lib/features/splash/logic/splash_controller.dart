import 'dart:async';
import 'package:aladia_mobile_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
// Import your routes

class SplashController {
  final BuildContext context;

  SplashController(this.context);

  void startSplash() {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(
          context, AppRoutes.home); // Navigate to home screen
    });
  }
}
