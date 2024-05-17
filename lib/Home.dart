import 'package:flutter/material.dart';
import 'Reusable/ClubCard.dart';
import 'Reusable/EventsCard.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30.0),
              width: 400,
              height: 173.60,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
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
                            "Hello",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "Club Connect",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {
                          // Add your notification button action here
                        },
                        icon: Icon(Icons.notifications),
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
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
            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 16), // Add a SizedBox with desired width as left margin
                Text(
                  'University ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'clubs',
                  style: TextStyle(
                    color: Color(0xFF4D7881),
                    fontSize: 16,
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
                  ClubCard(),
                  ClubCard(),
                  ClubCard(),
                  ClubCard(),

                ],
              ),
            ),

            Row(
              children: [
                SizedBox(width: 51), // Add a SizedBox with the same width as the previous left margin
                Text(
                  'Upcoming ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'events',
                  style: TextStyle(
                    color: Color(0xFF4D7881),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),

            SizedBox(
              height: 400, // Adjust the height according to your UI design
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
      ),
    );
  }
}
