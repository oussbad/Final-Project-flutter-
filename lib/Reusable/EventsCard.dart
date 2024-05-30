import 'package:flutter/material.dart';
import '../EventDetails.dart';

class EventsCard extends StatefulWidget {
  final String clubName;
  final String eventName;
  final String imagePath;
  final String time;
  final String date;

  const EventsCard({
    Key? key,
    required this.clubName,
    required this.eventName,
    required this.imagePath,
    required this.time,
    required this.date,
  }) : super(key: key);

  @override
  State<EventsCard> createState() => _EventsCardState();
}

class _EventsCardState extends State<EventsCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EventDetailsPage()),
        );
      },
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                widget.imagePath,
                width: 328,
                height: 127,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(left:30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    widget.eventName,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              margin: EdgeInsets.only(left: 30, right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${widget.time}    ${widget.date}',
                    style: TextStyle(
                      color: Color(0xFF3F3F3F),
                      fontSize: 11,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  Text(
                    widget.clubName,
                    style: TextStyle(
                      color: Color(0xFF3F3F3F),
                      fontSize: 11,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
          ],
        ),
      ),
    );
  }
}
