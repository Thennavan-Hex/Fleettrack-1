import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key});

  @override
  Widget build(BuildContext context) {
    return Mobile();
  }
}

class Mobile extends StatefulWidget {
  const Mobile({Key? key});

  @override
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  double imageWidth = 200; // Initial width of the image

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Change background color to white
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GestureDetector(
            onHorizontalDragUpdate: (details) {
              setState(() {
                // Adjust the width based on the horizontal drag
                imageWidth += details.primaryDelta!;
              });
            },
            child: Container(
              height: 200, // Set a specific height for the container
              child: Image.asset(
                'assets/img/pic3.png', //path of img
                fit: BoxFit.fitWidth,
                width: imageWidth,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          SizedBox(height: 50), // Add some space between the image and text field
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200], // Set background color to gray
                borderRadius: BorderRadius.circular(8), // Add border radius
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none, // Remove default border
                    labelText: 'Mobile Number',
                    prefixIcon: Icon(Icons.phone_android, color: Colors.orange), // Add mobile icon
                    enabledBorder: UnderlineInputBorder(  // Add underline border for enabled state
                      borderSide: BorderSide(color: Colors.orange), // Set color of the border
                    ),
                  ),
                  keyboardType: TextInputType.phone, // Set keyboard type to phone
                ),
              ),
            ),
          ),
          SizedBox(height: 30), // Add some space between the text field and button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity, // Make container expand horizontally
              child: ElevatedButton(
                onPressed: () {
                  // Add login functionality here
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.orange), // Set button background color to orange
                ),
                child: Text(
                  'Send OTP',
                  style: TextStyle(color: Colors.white), // Set button text color to white
                ),
              ),
            ),
          ),
          SizedBox(height: 5), // Adjusted space between the button and the next widget
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFFAFAFA), // Light yellow color with gray
                    Color(0xFFF5F5E1), // Light yellow color
                    Color(0xFFE2E598), // Darker yellow color
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 45), // Adjusted bottom padding
                    child: RichText(
                      text: TextSpan(
                        text: "Don't have an account? ",
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                            text: "Create",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/img/banner.png', //path of img
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
