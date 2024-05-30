import 'package:flutter/material.dart';

class MiniEventsCard extends StatelessWidget {
  final String eventImageUrl;
  final String eventDate;
  final String eventTitle;
  final String eventAddress;

  MiniEventsCard({
    required this.eventImageUrl,
    required this.eventDate,
    required this.eventTitle,
    required this.eventAddress,
  });


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 327,
        height: 106,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x0F575C8A),
              blurRadius: 35,
              offset: Offset(0, 10),
              spreadRadius: 0,
            )
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              left: 3,
              top: 3,
              child: Container(
                width: 88,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(eventImageUrl), // Change 'your_image.png' to your image asset path
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

          Positioned(
              top:6,
              left:105,
              child: Text(
            eventDate,
            style: TextStyle(
              color: Color(0xFF5668FF),
              fontSize: 13,
              fontFamily: 'Airbnb Cereal App',
              fontWeight: FontWeight.w400,
              height: 0,
            ),)

          ),
            Positioned(
                top:30,
                left:105,
                width: 190,
                child: Text(
                  eventTitle,
                  style: TextStyle(
                    color: Color(0xFF110C26),
                    fontSize: 15,
                    fontFamily: 'Airbnb Cereal App',
                    fontWeight: FontWeight.w500,
                  ),
                ),
            ),
            Positioned(
              top:80,
              left:105,
              child: Container(
                width: 14,
                height: 14,
                decoration: BoxDecoration (
                image: DecorationImage(
                  image: AssetImage('images/mappin.png'),
                  fit: BoxFit.fill,
                ),
               ),
              ),
            ),
            Positioned(
              top:80,
              left:125,
              child: Text(
                eventAddress,
                  style: TextStyle(
                  color: Color(0xFF747688),
                  fontSize: 13,
                  fontFamily: 'Airbnb Cereal App',
                  fontWeight: FontWeight.w400,
                   ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
