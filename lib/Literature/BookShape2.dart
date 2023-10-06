// ignore_for_file: must_be_immutable, prefer_const_constructors, use_key_in_widget_constructors, prefer_typing_uninitialized_variables, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../main.dart';



class BookShape2 extends StatelessWidget {
  String imagepath = '';
  var name;
  
  BookShape2({required this.imagepath, });

  @override
  Widget build(BuildContext context) {
    devH = MediaQuery.of(context).size.height;
    devW = MediaQuery.of(context).size.width;
    return 
      Container(
        height: devW * 0.6,
        width: devW * 0.6,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(boxShadow: [BoxShadow(blurRadius:5,offset: Offset(10, 8) )],
          borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black, width: 3),
            image: DecorationImage(
                image: AssetImage(imagepath), fit: BoxFit.fill)),
      )
    ;
  }
}