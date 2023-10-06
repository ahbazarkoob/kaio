// ignore_for_file: non_constant_identifier_names, must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/main.dart';

class CarouselPage extends StatelessWidget {
  String imagePath='';
  List<Culturecard> listname=[];
  CarouselPage({required this.imagePath,required this.listname});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(imagePath: imagePath), 
          ForegroundImage(listname: listname)],
      ),
    );
  }
}
  
 Widget BackgroundImage({required String imagePath}) {
    return SizedBox(
      height: devH * 0.5,
      width: devW,
      child: Image(
          fit: BoxFit.cover,
          image: AssetImage(imagePath)),
    );
  }
Widget ForegroundImage({required List <Culturecard> listname}) {
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: devH * 0.4,
        ),
        Column(
          children: listname,
        )
      ]),
    );
  }




class Culturecard extends StatelessWidget {
  String heading, description, imagePath;
  Culturecard(
      {required this.heading,
      required this.description,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                heading,
                style: kHeading,
              ),
              SizedBox(
                height: devH * 0.02,
              ),
              Container(
                height: devH*0.3,
              width: devW*0.9,
                child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      imagePath,
                    )),
              ),
              SizedBox(
                height: devH * 0.02,
              ),
              Text(
                description,
                textAlign: TextAlign.justify,
                style: kNormalText,
              )
            ],
          ),
        ));
  }
}