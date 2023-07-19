// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/literature.dart';

import '../main.dart';

class Travel extends StatelessWidget {
  const Travel({super.key});

  @override
  Widget build(BuildContext context) {
    devH = MediaQuery.of(context).size.height;
    devW = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(10),
      height: devH*0.50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        image: DecorationImage(image: AssetImage('assets/travel.jpeg'),
        fit: BoxFit.fill),
         ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Destination',style: kHeading,),
          Row(
            children: [
              Icon(Icons.pin_drop_outlined,color: Colors.white,),
              Text('Location',style: kHeading,),
              SizedBox(width: devW*0.50,),
              Icon(Icons.skip_next)
            ],
          ),
        SizedBox(height: devH*0.03,),
        ],
      ),);
  }
}
