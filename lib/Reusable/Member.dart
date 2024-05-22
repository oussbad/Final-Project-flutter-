import 'package:flutter/material.dart';

class MEMBER extends StatefulWidget {
  const MEMBER({Key? key}) : super(key: key);

  @override
  State<MEMBER> createState() => _MEMBERState();
}

class _MEMBERState extends State<MEMBER> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: Image.asset("images/check.png"),
            width: 72,
            height: 72,
            decoration: ShapeDecoration(
              color: Color(0xFFE0F7FA),
              shape: OvalBorder(),
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
            color: Colors.grey,
            thickness: 1,
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Action to be taken when button is pressed
            },
            child: Text(
              'DONE',
              style: TextStyle(
                color: Color(0xFF4D7881),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFE0F7FA), // Same as the container color
              elevation: 0, // Remove elevation
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
