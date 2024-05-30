import 'package:flutter/material.dart';

import '../EventDetails.dart';

class NotificationCard extends StatelessWidget {
  final String clubImageUrl;
  final String clubName;
  final String eventDescription;
  final String notificationTime;
  final VoidCallback onViewPressed;

  NotificationCard({
    required this.clubImageUrl,
    required this.clubName,
    required this.eventDescription,
    required this.notificationTime,
    required this.onViewPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 348,
      height: 100,  // Adjusted height to accommodate all elements
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 348,
                height: 75,  // Adjusted height to match the outer container
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(clubImageUrl),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '$clubName ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.25,
                                  ),
                                ),
                                TextSpan(
                                  text: 'just posted ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.25,
                                  ),
                                ),
                                TextSpan(
                                  text: eventDescription,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.25,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 4),  // Adjusted spacing between text and time
                          Text(
                            notificationTime,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.40,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 55,
                        height: 36,  // Adjusted height to better fit the layout
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.only(right: 10),
                        decoration: ShapeDecoration(
                          color: Color(0xFF4D7881),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => EventDetailsPage()),
                          );},
                          child: Center(
                            child: Text(
                              'VIEW',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Add the bottom border container
          Container(
            width: 284,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: Color(0xFFEEEEEE),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
