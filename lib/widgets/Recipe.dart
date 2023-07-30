// ignore_for_file: prefer_const_constructors, file_names, must_be_immutable, prefer_typing_uninitialized_variables, use_key_in_widget_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/main.dart';

class RecipeImage extends StatefulWidget {
  var name;
  String recipeName, assetName;
  RecipeImage({required this.name, required this.recipeName, required this.assetName});
  @override
  State<RecipeImage> createState() => _RecipeImageState();
}

class _RecipeImageState extends State<RecipeImage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Center(
        child: GestureDetector(
          onTap: () {
            print('Hey');
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        widget.name)); //widget.name navigates to Recipe
          },
          child: Card(
            child: Container(
              width: devW*0.9,
              height: devH*0.20,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff85586F),width: 3),
                borderRadius: BorderRadius.circular(20)),
              child: Stack(
                children: [
                  Positioned(
                    left: 220,
                    top: 80,
                    child: Text(
                      widget.recipeName,
                      style: kHeading,
                    ),
                  ),
                  Positioned(
                    left: 6,
                    top: 8,
                    child: Center(
                      child: CircleAvatar(
                        radius: devW*0.19,
                        backgroundImage: AssetImage(widget.assetName),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
