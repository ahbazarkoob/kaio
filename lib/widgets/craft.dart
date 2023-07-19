
// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';

class CraftCard extends StatelessWidget {
  var name;
  CraftCard({required this.name});

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
                  left: 60,
                  top: 60,
                  child: Center(
                      child: Text(
                    'Craft',
                    style: kHeading,
                  )),
                ),
                Positioned(
                  right: -40,
                  top: 5,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.amber.shade300,
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