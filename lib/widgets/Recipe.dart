// ignore_for_file: prefer_const_constructors, file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';

class RecipeImage extends StatelessWidget {
  var name;
  RecipeImage({required this.name});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
         onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => name));
      },
        child: Card(
          child: Container(
            height: 180,
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Stack(
              children: [
                Positioned(
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
                      backgroundColor: Colors.orange,
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
