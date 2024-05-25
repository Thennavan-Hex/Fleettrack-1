import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Google fonts

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: Splash(),
    );
  }
}

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 150.0),
                child: Image.asset('assets/img/pic1.png', alignment: Alignment.centerRight), // Change the img
              ),
              SizedBox(height: 20), // Add spacing between the image and the text
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Service for your Car & Bikes',
                  style: GoogleFonts.roboto(fontSize: 30),
                ),
              ),
              SizedBox(height: 20), // Add spacing between the text and the next section
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
            ],
          ),
          Positioned(
            bottom: 225.0, // Adjust the position as needed
            right: 0.1, // Adjust the position as needed
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.yellow,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: FloatingActionButton(
              onPressed: () {
                // Add onPressed logic here
              },
              backgroundColor: Colors.orange,
              child: Icon(Icons.arrow_forward_outlined),
              shape: CircleBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
