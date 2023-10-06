// ignore_for_file: prefer_const_constructors, annotate_overrides, prefer_const_literals_to_create_immutables, file_names

import "dart:async";

import "package:flutter/material.dart";
import "package:kaio/constants.dart";
import "package:kaio/main.dart";
import "package:kaio/mainScreen.dart";

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) {
        return MainScreen();
      }));
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Container(
          height: devH * 0.1,
          width: devW * 0.2,
          decoration: BoxDecoration(
            // gradient: LinearGradient(
            //     colors: [Colors.white, Theme.of(context).primaryColor],
            //     begin: Alignment.topLeft,
            //     end: Alignment.bottomRight),
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                blurRadius: 20.0,
              ),
            ],
          ),
          child: Center(
              child: Text(
            'Kaio',
            style: kNormalTextBold,
          )),
        ),
      )),
    );
  }
}
