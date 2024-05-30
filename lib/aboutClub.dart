import 'package:flutter/material.dart';
import 'dart:ui'; // Needed for the BackdropFilter

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
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                    TextButton(
                      onPressed: () {
                        _showBlurDialog(context);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFF4D7881),
                        minimumSize: Size(116, 32),
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Text(
                        'Join',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'ABeeZee',
                          fontWeight: FontWeight.w400,
                          height: 1.0,
                          letterSpacing: -0.24,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 1),
                child: Text(
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
                    height: 1.5,
                    letterSpacing: -0.24,
                  ),
                ),
              ),
              CustomSwitchButton(),
              SizedBox(
                height: 500,
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
        ],
      ),
    );
  }



  Future<void> _showBlurDialog(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            backgroundColor: Colors.transparent,
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 72,
                    height: 72,
                    decoration: BoxDecoration(
                      color: Color(0xFFE0F7FA),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Image.asset(
                        "images/check.png",
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'You are now A MEMBER',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF616161),
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 20),
                  Divider(
                    color: Colors.grey[300],
                    thickness: 1,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      // Add any additional action here if needed
                    },
                    child: Text(
                      'DONE',
                      style: TextStyle(
                        color: Color(0xFF4D7881),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Color(0xFF4D7881), backgroundColor: Color(0xFFE0F7FA),
                      elevation: 0,
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
