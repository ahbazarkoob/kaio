// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names, sized_box_for_whitespace, must_be_immutable, camel_case_types, use_key_in_widget_constructors, non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kaio/data/destination.dart';
import '../main.dart';

class DestinationFeatures extends StatelessWidget {
  const DestinationFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CarouselSlider(
          items: destinationCarousel,
          options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 2),
              scrollDirection: Axis.horizontal),
        ),
      ],
    );
  }
}

class featureContainer extends StatefulWidget {
  String imagePath;
  var NextPage;

  featureContainer({required this.imagePath, required this.NextPage});

  @override
  State<featureContainer> createState() => _featureContainerState();
}

class _featureContainerState extends State<featureContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => widget.NextPage),
        );
      },
      child: Container(
        margin: EdgeInsets.all(devW * 0.03),
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        width: devW * 0.8,
        child: Image(
          fit: BoxFit.fill,
          image: AssetImage(widget.imagePath),
        ),
      ),
    );
  }
}
