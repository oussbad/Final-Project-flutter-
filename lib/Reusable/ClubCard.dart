import 'package:flutter/material.dart';
class ClubCard extends StatefulWidget {
  const ClubCard({Key? key}) : super(key: key);

  @override
  State<ClubCard> createState() => _ClubCardState();
}

class _ClubCardState extends State<ClubCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 500,
        width: 200,
        child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("images/course-img.png"),
            Row(
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
            Row(
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
            )
          ],
        ),
      ),
    );
  }
}