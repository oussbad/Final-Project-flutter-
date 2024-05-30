import 'package:flutter/material.dart';
import 'package:untitled1/startUpScreen.dart';

import 'Home.dart';
import 'Login.dart';
import 'Reusable/ClubCard.dart';
import 'Reusable/Member.dart';
import 'Reusable/SwitchButton.dart';
import 'SingUp.dart';
import 'aboutClub.dart';
import 'startUpScreen.dart';
import 'Notifications.dart';
import 'EmptyNotifications.dart';
import 'Profile.dart';
import 'Reusable/miniEventsCard.dart';
import 'EditProfile.dart';
import 'EventDetails.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        home:  StartUp()// ProfilePage(

      // profileImagePath: 'images/marwan.png',
      // profileName: 'Marouane AIT HAMMOU',
      //  profileEmail: 'marwan@example.com',
      // profileAddress: '123 Main Street',
      // bioText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit , trhf  sjiiseu f dhusuf echsig cjvgh s uchcdih vdfnjkvx .',
      // memberImagePath: 'images/itech.png',
      //)
    );
  }
}