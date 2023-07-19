// ignore_for_file: prefer_const_constructors, file_names, must_be_immutable, prefer_typing_uninitialized_variables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';

class RecipeImage extends StatefulWidget {
  var name;
  RecipeImage({required this.name});

  @override
  State<RecipeImage> createState() => _RecipeImageState();
}

class _RecipeImageState extends State<RecipeImage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          print('Hey');
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => widget.name));
        },
        child: Card(
          child: Container(
            height: 180,
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Stack(
              children: [
                Positioned(
                  left: 60,
                  top: 60,
                  child: Center(
                      child: Text(
                    'Recipe',
                    style: kHeading,
                  )),
                ),
                Positioned(
                  right: -40,
                  top: 5,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.amber.shade300,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: const Color.fromRGBO(255, 152, 0, 1),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
