// ignore_for_file: must_be_immutable, prefer_const_constructors, use_key_in_widget_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import '../main.dart';

List<Widget> myBook = [];

class BookShape extends StatefulWidget {
  String imagepath = '';
  var name;
  
  BookShape({
    required this.name,
    required this.imagepath, 
  });

  @override
  State<BookShape> createState() => _BookShapeState();
}

class _BookShapeState extends State<BookShape> {
  @override
  Widget build(BuildContext context) {
    devH = MediaQuery.of(context).size.height;
    devW = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => widget.name));
       
      },
      child: Container(
        height: devW * 0.5,
        width: devW * 0.5,
        margin: EdgeInsets.all(devW * 0.01),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black, width: 3),
            image: DecorationImage(
                image: AssetImage(widget.imagepath), fit: BoxFit.fill)),
      ),
    );
  }
}
