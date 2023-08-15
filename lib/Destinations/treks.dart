// ignore_for_file: prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kaio/widgets/destinationFeature.dart';
import '../main.dart';

class Treks extends StatelessWidget {
  Treks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [BackgroundImage(), ForegroundImage()],
      ),
    );
  }

  Widget BackgroundImage() {
    return SizedBox(
      height: devH * 0.5,
      width: devW,
      child: Image(
          fit: BoxFit.cover,
          image: AssetImage('assets/Destination/Main/kashTreks.png')),
    );
  }

  Widget ForegroundImage() {
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: devH * 0.4,
        ),
        FeatureCard(
          heading: 'Sonmarg to Naranag', 
          description: 'This is a moderate trek that takes you through some of the most beautiful scenery in Kashmir. You will hike through forests, meadows, and over glaciers, with stunning views of the mountains all around you.',
           imagePath: 'assets/Destination/Main/Carousel/sonmargTrek.webp'),
        FeatureCard(
          heading: 'Pahalgam to Aru', 
          description:'This is a challenging trek that is only for experienced hikers. You will hike through high altitudes and over snow-capped passes, with stunning views of the Himalayas all around you.', 
          imagePath: 'assets/Destination/Main/Carousel/AruTrek.jpg'),
        FeatureCard(
          heading: 'Dras trek', 
          description: 'This is a very challenging trek that is only for experienced hikers. You will hike through high altitudes and over snow-capped passes, with stunning views of the Karakoram range all around you.', 
          imagePath: 'assets/Destination/Main/Carousel/dras.avif'),
        FeatureCard(
          heading: 'Gangbal trek', 
          description: 'This is a moderate trek that takes you to the Gangbal Lake, which is one of the most beautiful lakes in Kashmir', 
          imagePath: 'assets/Destination/Main/Carousel/gangbalTrek.webp')
      ]),
    );
  }
}
