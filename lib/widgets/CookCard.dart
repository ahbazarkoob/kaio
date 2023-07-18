// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';


// ignore: must_be_immutable
class CookCard extends StatelessWidget {
  String CardText;
  CookCard({required this.CardText});
  @override
  Widget build(BuildContext context) {
    var devH = MediaQuery.of(context).size.height;
    var devW = MediaQuery.of(context).size.width;
    return  SizedBox(
                          height: devH * 0.13,
                          width: devW ,
                          child: Card(color: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding:  EdgeInsets.all(8.0),
                              child: Text(CardText,style: kSelText,),
                            ),
                          ));
  }
}