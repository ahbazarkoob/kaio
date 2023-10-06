// ignore_for_file: must_be_immutable, prefer_const_constructors, use_key_in_widget_constructors, prefer_typing_uninitialized_variables, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../main.dart';

class BookShape extends StatelessWidget {
  String imagepath = '';
  var name;
  BookShape({
    required this.name,
    required this.imagepath,
   
  });

  @override
  Widget build(BuildContext context) {
    devH = MediaQuery.of(context).size.height;
    devW = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
       
        Navigator.push(context, MaterialPageRoute(builder: (context) => name),
        );
      },
      child: Container(
        height: devW * 0.4,
        width: devW * 0.3,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(boxShadow: [BoxShadow(blurRadius: 5,offset:Offset(5, 5))],
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.black, width: 1),
            image: DecorationImage(
                image: AssetImage(imagepath), fit: BoxFit.fill)),
      ),
    );
  }
}
