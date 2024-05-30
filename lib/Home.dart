import 'dart:math';

import 'package:flutter/material.dart';
import 'EmptyNotifications.dart';
import 'Login.dart';
import 'Notifications.dart';
import 'Reusable/ClubCard.dart';
import 'Reusable/EventsCard.dart';
import 'Profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 25,),
              Container(
                margin: EdgeInsets.only(top: 25.0),
                width: 370,
                height: 190.60,
                padding: EdgeInsets.only(top: 40,left: 10, right: 10),
                decoration: BoxDecoration(
                  color: Color(0xFF4D7881),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome to",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 12,),
                            Text(
                              "Club Connect",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w400,
                                height: 0.07,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 15,),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Opacity(
                                  opacity: 0.30,
                                  child: Container(
                                    width: 44.39,
                                    height: 32.20,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(35),
                                      ),
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    List<Widget> pages = [ProfilePage(
                                      profileImagePath: 'images/marwan.png',
                                      profileName: 'Marouane AIT HAMMOU',
                                      profileEmail: 'marwan@example.com',
                                      profileAddress: '123 Main Street',
                                       bioText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit , trhf  sjiiseu f dhusuf echsig cjvgh s uchcdih vdfnjkvx .',
                                      memberImagePath: 'images/rotaract.png',
                                      )];
          
                                    // Sélection aléatoire d'un index
                                    int randomIndex = Random().nextInt(pages.length);
          
                                    // Navigation vers la page sélectionnée aléatoirement
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => pages[randomIndex]),
                                    );
                                  },
                                  icon: Icon(Icons.person),
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            SizedBox(width: 15,),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Opacity(
                                  opacity: 0.30,
                                  child: Container(
                                    width: 44.39,
                                    height: 32.20,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(35),
                                      ),
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    List<Widget> pages = [EmptyNotifications(), NotificationPage()];
          
                                    // Sélection aléatoire d'un index
                                    int randomIndex = Random().nextInt(pages.length);
          
                                    // Navigation vers la page sélectionnée aléatoirement
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => pages[randomIndex]),
                                    );
                                  },
                                  icon: Icon(Icons.notifications),
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            SizedBox(width: 15,),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Opacity(
                                  opacity: 0.30,
                                  child: Container(
                                    width: 44.39,
                                    height: 32.20,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(35),
                                      ),
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {

                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text('logged out successfully')),
                                    );
                                    // Navigation vers la page sélectionnée aléatoirement
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Login()),
                                    );
                                  },
                                  icon: Icon(Icons.logout),
                                  color: Colors.white,
                                ),
                              ],
                            ),
          
                          ],
                        )
          
                      ],
                    ),
                    SizedBox(height: 45),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFFEFDFE),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 40,
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Color(0xFFB7B7B7),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search',
                                hintStyle: TextStyle(
                                  color: Color(0xFFB7B7B7),
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              // Add your action for "All" button
                            },
                            child: Transform.rotate(
                              angle: -3.14,
                              child: Icon(
                                Icons.star_border,
                                color: Color(0xFFB7B7B7),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 16), // Add a SizedBox with desired width as left margin
                  Text(
                    'University ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'clubs',
                    style: TextStyle(
                      color: Color(0xFF4D7881),
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
          
          
              SizedBox(
                height: 160, // Adjust the height according to your UI design
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [

                    ClubCard(
                      clubName: 'GDSC',
                      membersCount: 1000,
                      imagePath: 'images/gdsc.png',
                    ), ClubCard(
                      clubName: 'Rotaract',
                      membersCount: 700,
                      imagePath: 'images/rotaract.png',
                    ), ClubCard(
                      clubName: 'Enactus',
                      membersCount: 700,
                      imagePath: 'images/enactus.png',
                    ),
          
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 30), // Add a SizedBox with the same width as the previous left margin
                  Text(
                    'Upcoming ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'events',
                    style: TextStyle(
                      color: Color(0xFF4D7881),
                      fontSize: 19,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
          
              SizedBox(
                height: 305, // Adjust the height according to your UI design
                child: SingleChildScrollView(
                  child: Column(
                    children: [

                      EventsCard(
                        eventName: 'conference SE',
                        clubName: 'GDSC Club',
                        imagePath: 'images/eventgdsc.jpg',
                        time: '3pm',
                        date: '19-07-2024',
                      ),
                      EventsCard(
                        eventName: 'Night Neon Party',
                        clubName: 'Rotaract Club',
                        imagePath: 'images/eventrotaract.jpg',
                        time: '3pm',
                        date: '19-07-2024',
                      ),
                      EventsCard(
                        eventName: 'Traditional Gala',
                        clubName: 'Hands Club',
                        imagePath: 'images/eventHnads.jpg',
                        time: '3pm',
                        date: '19-07-2024',
                      ),
                      SizedBox(height: 20,),
                    ],
                  ),
                ),
              ),
          
          
            ],
          ),
        ),

        );


  }
}
