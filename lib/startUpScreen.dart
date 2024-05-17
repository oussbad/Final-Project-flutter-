import 'package:flutter/material.dart';

class StartUp extends StatefulWidget {
  const StartUp({Key? key}) : super(key: key);

  @override
  State<StartUp> createState() => _StartUpState();
}

class _StartUpState extends State<StartUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("images/start.png"),
          Text(
            'Welcome to ClubConnect',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF1C1C1C),
              fontSize: 26,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
          SizedBox(
            width: 300,
            child: Opacity(
              opacity: 0.60,
              child: Text(
                'an app to Discover and join Uemf clubs and communities  & connect with people ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF1C1C1C),
                  fontSize: 12,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
          ),
          Text(
            'Create an Account',
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: Color(0xFFF8F8FF),
              fontSize: 18,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
          GestureDetector(
            onTap: () {
              // Add your onTap functionality here
              print('Button tapped!');
            },
            child: Container(
              height: 55,
              margin: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                // Optional: Adds rounded corners to the button
                color: Color(0xFF4D7881), // Change the color as needed
              ),
              child: Center(
                child: Text(
                  'Create an Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Add your onPressed functionality here
                print('Button pressed!');
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(353, 55), // Set the width and height of the button
                backgroundColor: Colors.white, // Set the background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(color: Color(0xFF4D7881)),
                  // Optional: Adds rounded corners to the button
                ),
              ),
              child: Text(
                'Login',
                style: TextStyle(
                  color: Color(0xFF4D7881),
                  fontSize: 18,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}
