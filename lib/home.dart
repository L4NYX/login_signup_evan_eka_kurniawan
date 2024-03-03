import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color to hex #D5F2E8
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: 240, // Margin bottom for success.png
              child: Image.asset(
                'assets/images/success.png',
                width: 200,
                height: 200,
              ),
            ),
            Positioned(
              top: 300, // Absolute positioning for checkmark.png
              child: Image.asset(
                'assets/images/checkmark.png',
                width: 100,
                height: 100,
              ),
            ),
            Positioned(
              bottom: 250, // Positioning for "Continue to Home" text
              child: Text(
                'Continue to Home',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter',
                  decoration: TextDecoration.underline,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
