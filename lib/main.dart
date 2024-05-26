import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gogaadi/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white, // Set background color to white
        child: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      'assets/img/pic2.png', // Path of img
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  SizedBox(height: 12),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Service for your Car & Bikes',
                      style: GoogleFonts.roboto(fontSize: 30),
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Car Repair, bike spa, or vehicle',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'regular maintenance. Choose from the',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'list of services we offer.',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(height: 80), // Add spacing to keep buttons at the bottom
                ],
              ),
              Positioned(
                bottom: 16.0,
                left: 16.0, // Align dots to the left corner
                child: Row(
                  children: [
                    buildDot(true, 45.0), // Make the first dot slightly bigger
                    SizedBox(width: 8),
                    buildDot(false, 10.0),
                    SizedBox(width: 8),
                    buildDot(false, 10.0),
                    SizedBox(width: 8),
                    buildDot(false, 10.0),
                  ],
                ),
              ),
              Positioned(
                bottom: 12.0,
                right: 16.0,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  backgroundColor: Colors.orange,
                  child: Icon(Icons.arrow_forward_outlined),
                  shape: CircleBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDot(bool isActive, double size) {
    return Container(
      height: size,
      width: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Color(0xFFDA8281) : Colors.grey,
      ),
    );
  }
}
