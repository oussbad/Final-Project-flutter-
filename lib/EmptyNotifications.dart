import 'package:flutter/material.dart';

class EmptyNotifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Notifications',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            height: 0.06,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_left, size: 35),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 200,
                  height: 230,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/belll.png"), // Replace "bell_image.png" with your local image path
                      fit: BoxFit.fill,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x0E35486D),
                        blurRadius: 35,
                        offset: Offset(0, 14),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 48, // Adjust the bottom value to make the "0" touch the bell
                  right: 36, // Adjust the right value if needed
                  child: Container(
                    width: 35.20,
                    height: 35.20,
                    decoration: ShapeDecoration(
                      color: Color(0xFF4D7881),
                      shape: OvalBorder(),
                      shadows: [
                        BoxShadow(
                          color: Color(0x265568FF),
                          blurRadius: 8,
                          offset: Offset(0, 2),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        '0',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.60,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w600,
                          height: 0,
                          letterSpacing: -0.17,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // Adding some space between the image and text
            Text(
              'No Notifications!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF334A66),
                fontSize: 18,
                fontFamily: 'Airbnb Cereal App',
                fontWeight: FontWeight.w400,
                height: 0.10,
              ),
            ),
            SizedBox(height: 20), // Adding some space between the text and other content
            // You can add more widgets here if needed
          ],
        ),
      ),
    );
  }
}
