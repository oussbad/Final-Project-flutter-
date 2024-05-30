import 'package:flutter/material.dart';

class CustomSwitchButton extends StatefulWidget {
  @override
  _CustomSwitchButtonState createState() => _CustomSwitchButtonState();
}

class _CustomSwitchButtonState extends State<CustomSwitchButton> {
  bool isUpcomingSelected = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isUpcomingSelected = !isUpcomingSelected;
        });
      },
      child: Stack(
        children: <Widget>[
          Container(
            width: 290, // 145 * 2
            height: 40,
            decoration: ShapeDecoration(
              color: Color(0xFFF0F0F7),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 20,
                  offset: Offset(0, 5),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'PAST EVENTS',
                  style: TextStyle(
                    color: Color(0xFF9A9A9A),
                    fontSize: 15,
                    fontFamily: 'Airbnb Cereal App',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'UPCOMING',
                  style: TextStyle(
                    color: Color(0xFF9A9A9A),
                    fontSize: 15,
                    fontFamily: 'Airbnb Cereal App',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 300),
            left: isUpcomingSelected ? 0 : 145,
            child: Container(
              width: 145,
              height: 35, // Adjusted height for better fit
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 20,
                    offset: Offset(0, 5),
                    spreadRadius: 0,
                  )
                ],
              ),
              alignment: Alignment.center,
              child: Text(
                isUpcomingSelected ? 'PAST EVENTS' : 'UPCOMING',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF4D7881),
                  fontSize: 15,
                  fontFamily: 'Airbnb Cereal App',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
