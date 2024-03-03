import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/barter.png'),
              SizedBox(height: 10), // Add a SizedBox to create space between images
              Container(
                margin: EdgeInsets.only(bottom: 5), // Add margin bottom 5px for text1
                child: Image.asset('assets/images/text1.png'),
              ),
              Image.asset('assets/images/text2.png'),
              SizedBox(height: 20), // Add space between images and buttons
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF2D4990), // Set button color to #2D4990
                  minimumSize: Size(340, 55), // Set button width and height
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5), // Set button border radius
                  ),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white, // Set text color to white
                    fontSize: 24, // Set text font size to 24px
                    fontFamily: 'Inter', // Set text font family to Inter
                    fontWeight: FontWeight.w500, // Set text font weight to 500
                  ),
                ),
              ),
              SizedBox(height: 10), // Add space between buttons
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupScreen()),
                  );
                },
                style: OutlinedButton.styleFrom(
                  primary: Color(0xFF2D4990), // Set button text color to #2D4990
                  side: BorderSide(color: Color(0xFF2D4990), width: 2), // Set button border color and width
                  minimumSize: Size(340, 55), // Set button width and height
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5), // Set button border radius
                  ),
                ),
                child: Text(
                  'Sign up',
                  style: TextStyle(
                    fontSize: 24, // Set text font size to 24px
                    color: Color(0xFF2D4990), // Set text color to #2D4990
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
