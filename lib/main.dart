// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_typing_uninitialized_variables, unused_import, use_key_in_widget_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kaio/Literature/BookTemplate.dart';
import 'package:kaio/SplashScreen.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/mainScreen.dart';
import 'MainScreens/Cuisine.dart';
import 'MainScreens/Culture.dart';
import 'MainScreens/destinations.dart';
import 'MainScreens/handicrafts.dart';
import 'MainScreens/literature.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:device_info/device_info.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(theme: myTheme, home: HomeScreen()),
  );
}

ThemeData myTheme = ThemeData(
  scaffoldBackgroundColor: Color(0xffFBC757),
  primaryColor: Color(0xff00A095),
  tabBarTheme: TabBarTheme(
      labelColor: Colors.black,
      labelStyle: kNormalTextBold,
      unselectedLabelStyle: kNormalText),
);

var devH, devW, button;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    button = ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        Theme.of(context).primaryColor,
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );

    devH = MediaQuery.of(context).size.height;
    devW = MediaQuery.of(context).size.width;
    return SplashScreen();
  }
}
