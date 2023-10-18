// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, must_be_immutable, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';
import 'package:kaio/MainScreens/explore.dart';
import '../main.dart';

class CarouselPage extends StatefulWidget {
  String listname = '', imagePath;
  CarouselPage({required this.listname, required this.imagePath});

  @override
  State<CarouselPage> createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        BackgroundImage(imagePath: widget.imagePath),
        Explore(
          listname: widget.listname,
        )
      ],
    ));
  }
}

Widget BackgroundImage({required imagePath}) {
  return SizedBox(
    height: devH,
    width: devW,
    child: Image(fit: BoxFit.fill, image: AssetImage(imagePath)),
  );
}
