// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, must_be_immutable, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';
import 'package:kaio/Destinations/destinationFeature.dart';
import '../main.dart';

class CarouselPage extends StatelessWidget {
  String imagePath='';
  List<FeatureCard> listname=[];
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
  
 Widget BackgroundImage({required String imagePath}) {
    return SizedBox(
      height: devH * 0.5,
      width: devW,
      child: Image(
          fit: BoxFit.cover,
          image: AssetImage(imagePath)),
    );
  }
Widget ForegroundImage({required List <FeatureCard> listname}) {
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
} 


