import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shopping_app/main.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay to simulate the splash screen duration.
    Timer(const Duration(seconds: 3), () {
      // Navigate to the main screen or any other screen after the splash screen.
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // Background image
          Image.asset(
            'assets/splash_background.jpg', // Replace with your image path
            fit: BoxFit.cover,
          ),
          // Welcome heading at the top
          const Positioned(
            top: 100.0,
            left: 20.0,
            right: 20.0,
            child: Text(
              'Welcome to Your App',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          // You can add more widgets for additional content as needed.
        ],
      ),
    );
  }
}