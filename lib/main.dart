import 'package:flutter/material.dart';
import 'package:untitled1/startUpScreen.dart';

import 'Home.dart';
import 'Login.dart';
import 'Reusable/ClubCard.dart';
import 'SingUp.dart';
import 'startUpScreen.dart';
import 'Notifications.dart';
import 'EmptyNotifications.dart';
import 'Profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage( profileImagePath: 'images/marwan.png',profileName:"Marouane    AIT    HAMMOU",profileEmail:"Marou@hotmail.com", profileAddress: "Fez, Morocco" , bioText:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tortor turpis sodales nulla velit. Nunc cum vitae, rhoncus leo id. Volutpat Duis tinunt pretium luctus pulvinar pretium.',memberImagePath:'images/itech.png'),

    );
  }
}
