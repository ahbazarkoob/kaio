
// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:kaio/main.dart';

class CraftCard extends StatelessWidget {
  String imagePath;
  CraftCard({required this.imagePath});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
         onTap: () {
      },
        child: Card(
          child: Container(
            height: devH*0.3,
            width: devW*0.9,
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Image(image: AssetImage(imagePath))
          ),
        ),
      ),
    );
  }
}