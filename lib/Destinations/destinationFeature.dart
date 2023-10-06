// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../constants.dart';
import '../main.dart';

// ignore: must_be_immutable
class FeatureCard extends StatelessWidget {
  String heading, description, imagePath;
  FeatureCard(
      {required this.heading,
      required this.description,
      required this.imagePath});

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
              Container(
                height: devH*0.3,
              width: devW*0.9,
                child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      imagePath,
                    )),
              ),
              SizedBox(
                height: devH * 0.02,
              ),
              Text(
                description,
                textAlign: TextAlign.justify,
                style: kNormalText,
              )
            ],
          ),
        ));
  }
}
