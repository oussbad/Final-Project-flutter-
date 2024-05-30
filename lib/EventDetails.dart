import 'package:flutter/material.dart';

class EventDetailsPage extends StatefulWidget {
  @override
  _EventDetailsPageState createState() => _EventDetailsPageState();
}

class _EventDetailsPageState extends State<EventDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Event Details',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'Airbnb Cereal App',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_left, size: 35, color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.bookmark, color: Colors.white,),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 251,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/party.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: SizedBox(
                width: 313,
                child: Text(
                  'Integration      Music Concert',
                  style: TextStyle(
                    color: Color(0xFF110C26),
                    fontSize: 35,
                    fontFamily: 'ABeeZee',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48.0),
              child: Row(
                children: [
                  Container(
                    width: 52,
                    height: 52,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Opacity(
                            opacity: 0.10,
                            child: Container(
                              width: 48,
                              height: 48,
                              decoration: ShapeDecoration(
                                color: Color(0xFF5668FF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 9,
                          top: 9,
                          child: Container(
                            width: 30,
                            height: 30,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 40,
                                  height: 30,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        child: Container(
                                          width: 35,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage("images/Calendar.png"),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), // Calendar container
                  SizedBox(width: 35), // Space between containers
                  Container(
                    width: 151,
                    height: 50,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 8,
                          child: Opacity(
                            opacity: 0.84,
                            child: Text(
                              '14 December, 2024',
                              style: TextStyle(
                                color: Color(0xFF110C26),
                                fontSize: 16,
                                fontFamily: 'ABeeZee',
                                fontWeight: FontWeight.w400,
                                height: 0.13,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 30,
                          child: Text(
                            'Tuesday, 6:00PM - 9:00PM',
                            style: TextStyle(
                              color: Color(0xFF747688),
                              fontSize: 12,
                              fontFamily: 'ABeeZee',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ) // Date and time container
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48.0),
              child: Row(
                children: [
                  Container(
                    width: 52,
                    height: 52,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Opacity(
                            opacity: 0.10,
                            child: Container(
                              width: 48,
                              height: 48,
                              decoration: ShapeDecoration(
                                color: Color(0xFF5668FF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 9,
                          top: 9,
                          child: Container(
                            width: 30,
                            height: 30,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 40,
                                  height: 30,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        child: Container(
                                          width: 35,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage("images/Location.png"),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), // Location container
                  SizedBox(width: 35), // Space between containers
                  Container(
                    width: 151,
                    height: 50,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 8,
                          child: Opacity(
                            opacity: 0.84,
                            child: Text(
                              'Euromed university',
                              style: TextStyle(
                                color: Color(0xFF110C26),
                                fontSize: 16,
                                fontFamily: 'ABeeZee',
                                fontWeight: FontWeight.w400,
                                height: 0.13,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 30,
                          child: Text(
                            'Entre les batiments B1 , B2',
                            style: TextStyle(
                              color: Color(0xFF747688),
                              fontSize: 12,
                              fontFamily: 'ABeeZee',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ) // Location details container
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48.0),
              child: Container(
                width: 327,
                height: 44,
                child: Stack(
                  children: [
                    Positioned(
                      left: 57,
                      top: 1,
                      child: Container(
                        width: 82,
                        height: 41,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 7,
                              child: Text(
                                'Hands Club',
                                style: TextStyle(
                                  color: Color(0xFF0D0C26),
                                  fontSize: 15,
                                  fontFamily: 'ABeeZee',
                                  fontWeight: FontWeight.w500,
                                  height: 0.11,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 25,
                              child: Text(
                                'Organizer',
                                style: TextStyle(
                                  color: Color(0xFF6F6D8F),
                                  fontSize: 12,
                                  fontFamily: 'Airbnb Cereal App',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 220,
                      top: 8,
                      child: Container(
                        width: 60,
                        height: 28,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Opacity(
                                opacity: 0.12,
                                child: Container(
                                  width: 60,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF4D7881),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0x144AD2E4),
                                        blurRadius: 20,
                                        offset: Offset(0, 8),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: -2,
                              top: -10,
                              child: TextButton(
                                onPressed: () {
                                  // Add your onPressed logic here
                                },
                                child: Text(
                                  'Join',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF4D7881),
                                    fontSize: 12,
                                    fontFamily: 'ABeeZee',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 44,
                        height: 44,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 44,
                                height: 44,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFC4C4C4),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage("images/itech.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48.0),
              child: Text(
                'About Event',
                style: TextStyle(
                  color: Color(0xFF110C26),
                  fontSize: 18,
                  fontFamily: 'Airbnb Cereal App',
                  fontWeight: FontWeight.w500,
                  height: 0.10,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48.0),
              child: Text(
                'Enjoy your time and get to know people and other students. Drinks will be available for purchase.Drinks will be available for purchase. Drinks will be available for purchase. ',
                style: TextStyle(
                  color: Color(0xFF110C26),
                  fontSize: 16,
                  fontFamily: 'ABeeZee',
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                ),
              ),
            ),

            SizedBox(height: 35),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child:  Container(
            width: 221,
            height: 45,
            decoration: ShapeDecoration(
              color: Color(0xFF4D7881),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
            child: TextButton(
              onPressed: () {
                // Add your onPressed logic here
              },
              child: Text(
                'ATTEND EVENT',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'ABeeZee',
                  fontWeight: FontWeight.w400,
                  height: 0,
                  letterSpacing: 1,
                ),
              ),
            ),
          )
        ),
            SizedBox(height: 35),
          ],
        ),
      ),
    );
  }
}