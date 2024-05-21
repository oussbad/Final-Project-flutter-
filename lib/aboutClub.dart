import 'package:flutter/material.dart';

import 'Reusable/EventsCard.dart';
import 'Reusable/SwitchButton.dart';

class aboutClub extends StatefulWidget {
  const aboutClub({Key? key}) : super(key: key);

  @override
  State<aboutClub> createState() => _aboutClubState();
}

class _aboutClubState extends State<aboutClub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 86,
                height: 86,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/event1.png"),
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 3,
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: Color(0xFF4D7881),
                    ),
                    borderRadius: BorderRadius.circular(112.50),
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    '+56',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontSize: 13,
                      fontFamily: 'ABeeZee',
                      fontWeight: FontWeight.w400,
                      height: 0,
                      letterSpacing: -0.33,
                    ),
                  ),
                  Text(
                    'events',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontSize: 13,
                      fontFamily: 'ABeeZee',
                      fontWeight: FontWeight.w400,
                      height: 0,
                      letterSpacing: -0.33,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '+56',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontSize: 13,
                      fontFamily: 'ABeeZee',
                      fontWeight: FontWeight.w400,
                      height: 0,
                      letterSpacing: -0.33,
                    ),
                  ),
                  Text(
                    'events',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontSize: 13,
                      fontFamily: 'ABeeZee',
                      fontWeight: FontWeight.w400,
                      height: 0,
                      letterSpacing: -0.33,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'About the Club',
                style: TextStyle(
                  color: Color(0xFF9A9A9A),
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'ABeeZee',
                  fontWeight: FontWeight.w400,
                  height: 0,
                  letterSpacing: -0.35,
                ),
              ),
              /*ElevatedButton(
                onPressed: () {
                  // Define the action when the button is pressed
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF4D7881), // Button background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7), // Rounded corners
                  ),
                  fixedSize: Size(116, 32), // Button size
                ),
                child: Text(
                  'Join',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white, // Text color
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'ABeeZee',
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.24,
                  ),
                ),
              )*/

            ],
          ),
          Text(
            '''The GDSC UEMF club helps students develop their
technical skills related to Google's latest digital
technologies and digital development in general.
The club organizes workshops and carries out projects
in web development, mobile applications, Arduino,
artificial intelligence, cyber security...''',
            style: TextStyle(
              color: Color(0xFF212121),
              fontSize: 14,
              fontFamily: 'ABeeZee',
              fontWeight: FontWeight.w400,
              height: 1.5,  // Adjust line height as needed
              letterSpacing: -0.24,
            ),
          ),
          CustomSwitchButton(),
          SizedBox(
            height: 500, // Adjust the height according to your UI design
            child: SingleChildScrollView(
              child: Column(
                children: [

                  EventsCard(),
                  EventsCard(),
                  EventsCard(),
                  EventsCard(),
                  EventsCard(),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
