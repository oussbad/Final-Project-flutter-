import 'package:flutter/material.dart';
import 'package:untitled1/aboutClub.dart';

class ClubCard extends StatefulWidget {
  final String clubName;
  final int membersCount;
  final String imagePath;

  const ClubCard({
    Key? key,
    required this.clubName,
    required this.membersCount,
    required this.imagePath,
  }) : super(key: key);

  @override
  State<ClubCard> createState() => _ClubCardState();
}

class _ClubCardState extends State<ClubCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AboutClub(
            clubImage: 'images/gdsc.png',
            clubName: 'GDSC UEMF',
            numberOfEvents: 56,
            numberOfMembers: 120,
            clubBio: '''The GDSC UEMF club helps students develop their
technical skills related to Google's latest digital
technologies and digital development in general.
The club organizes workshops and carries out projects
in web development, mobile applications, Arduino,
artificial intelligence, cyber security...''',
          )),
        );
      },
      child: Container(
        margin: EdgeInsets.only(left: 13, right:13),
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 200,
              height: 128,
              child: Image.asset(
                widget.imagePath,
                fit: BoxFit.cover, // To ensure the image covers the box
              ),
            ),
            SizedBox(height: 7,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  widget.clubName,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 3,),
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
                  'Members ${widget.membersCount}',
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
          ],
        ),
      ),
    );
  }
}
