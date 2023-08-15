// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';
import '../main.dart';

class FeatureTemp extends StatelessWidget {
  String imagePath;
  FeatureTemp({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            BackgroundImage(imagePath), 
            ForegroundImage()],
        ),
      ),
    );
  }

  Widget BackgroundImage(imagePath) {
    return SizedBox(
      height: devH * 0.5,
      width: devW,
      child: Image(fit: BoxFit.cover, image: AssetImage(imagePath)),
    );
  }

  Widget ForegroundImage() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: devH * 0.4,
          ),
        ],
      ),
    );
  }
}

List<String> wild = [];

class Feature extends StatelessWidget {
  String heading = '';
  String description = '';
  String imagePath= '';
  Feature(
      {required this.heading,
      required this.imagePath,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                heading,
                style: kHeading,
              ),
              SizedBox(
                height: devH * 0.02,
              ),
              Image(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    imagePath,
                  )),
              SizedBox(
                height: devH * 0.02,
              ),
              Text(
                description,
                textAlign: TextAlign.justify,
              )
            ],
          ),
        ));
  }
}
