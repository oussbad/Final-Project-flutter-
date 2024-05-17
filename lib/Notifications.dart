import 'package:flutter/material.dart';
import 'Reusable/NotificationCard.dart';
import 'Reusable/ReminderCard.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Notifications',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            height: 0.06,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_left, size: 35),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 35, top: 18),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Today',
                style: TextStyle(
                  color: Color(0xFF757575),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 1.4,
                  letterSpacing: 0.10,
                ),
              ),
              SizedBox(height: 10), // Add some space between the text and the card
              NotificationCard(
                clubImageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt43oIbEsAljfjAt0pHSGPoS7_-ISQBcYcazN4fjLEpw&s',
                clubName: 'GDSC club',
                eventDescription: 'A new            Event',
                notificationTime: '9:01am',
                onViewPressed: () {
                  // Handle the view button press
                },
              ),
              ReminderCard(notificationTime: '9:01am'),  // Use the ReminderCard
              NotificationCard(
                clubImageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt43oIbEsAljfjAt0pHSGPoS7_-ISQBcYcazN4fjLEpw&s',
                clubName: 'GDSC club',
                eventDescription: 'A new            Event',
                notificationTime: '9:01am',
                onViewPressed: () {
                  // Handle the view button press
                },
              ),
              NotificationCard(
                clubImageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt43oIbEsAljfjAt0pHSGPoS7_-ISQBcYcazN4fjLEpw&s',
                clubName: 'GDSC club',
                eventDescription: 'A new            Event',
                notificationTime: '9:01am',
                onViewPressed: () {
                  // Handle the view button press
                },
              ),
              ReminderCard(notificationTime: '9:01am'),
              NotificationCard(
                clubImageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt43oIbEsAljfjAt0pHSGPoS7_-ISQBcYcazN4fjLEpw&s',
                clubName: 'GDSC club',
                eventDescription: 'A new            Event',
                notificationTime: '9:01am',
                onViewPressed: () {
                  // Handle the view button press
                },
              ),
              ReminderCard(notificationTime: '9:01am'),
              ReminderCard(notificationTime: '9:01am'),
              ReminderCard(notificationTime: '9:01am'),
            ],
          ),
        ),
      ),
    );
  }
}
