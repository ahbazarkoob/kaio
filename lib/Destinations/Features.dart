// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names, sized_box_for_whitespace

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class DestinationFeatures extends StatelessWidget {
  const DestinationFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CarouselSlider(
          items: [
            featureContainer('assets/Destination/Main/kashWidlife.png'),
            featureContainer('assets/Destination/Main/kashShrines.png'),
            featureContainer('assets/Destination/Main/kashTreks.png'),
            featureContainer('assets/Destination/Main/kashPilgrims.png'),
            featureContainer('assets/Destination/Main/kashHeriatge.png'),
          ],
          options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 2),
              scrollDirection: Axis.horizontal),
        ),
      ],
    );
  }

  Widget featureContainer(String imagePath) {
    return Container(
      margin: EdgeInsets.all(devW*0.03),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      width: devW*0.8,
      child: Image(
            fit: BoxFit.fill,
            image: AssetImage(imagePath)));
  }
}
