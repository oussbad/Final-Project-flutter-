import 'package:flutter/material.dart';
import 'package:untitled1/startUpScreen.dart';

import 'Home.dart';
import 'Login.dart';
import 'Reusable/ClubCard.dart';
import 'Reusable/SwitchButton.dart';
import 'SingUp.dart';
import 'aboutClub.dart';
import 'startUpScreen.dart';
import 'Notifications.dart';
import 'EmptyNotifications.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: aboutClub(),
    );
  }
}