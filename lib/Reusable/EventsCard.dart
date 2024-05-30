import 'package:flutter/material.dart';
class EventsCard extends StatefulWidget {
  const EventsCard({Key? key}) : super(key: key);

  @override
  State<EventsCard> createState() => _EventsCardState();
}

class _EventsCardState extends State<EventsCard> {
  @override
  Widget build(BuildContext context) {
    return
     Container(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "images/event1.png",
              width: 400,



            )
            ,
            Container(
              margin: EdgeInsets.only(left: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Reading Club',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ), ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 40,right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text(
                    'see details',
                    style: TextStyle(
                      color: Color(0xFF3F3F3F),
                      fontSize: 8,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  Text(
                    'Members 700',
                    style: TextStyle(
                      color: Color(0xFF3F3F3F),
                      fontSize: 8,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );

  }
}
