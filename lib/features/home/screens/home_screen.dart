import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: const Center(
        child: Text(
          'Welcome to Aladia App!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
