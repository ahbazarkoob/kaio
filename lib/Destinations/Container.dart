// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:kaio/main.dart';

class DestinationContainer extends StatelessWidget {
  String imagePath = '';
  var nextPage;
  DestinationContainer({required this.imagePath, required this.nextPage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => nextPage));
      },
      child: Container(
          margin: EdgeInsets.all(devW * 0.02),
          width: devW * 0.7,
          height: devH * 0.3,
          child: Image.asset(imagePath)),
    );
  }
}
