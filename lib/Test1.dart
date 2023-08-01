//ignore_for_file: use_key_in_widget_constructors, must_be_immutable, avoid_unnecessary_containers, avoid_print

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flip_carousel/flip_carousel.dart';
import 'package:kaio/test.dart';

class CuisineCarousel extends StatefulWidget {
  List<dynamic> cardItems = [
    'assets/HarrisaRecipie.png',
    // Container(color: Colors.amber, child: const FlutterLogo()),
    Container(
      child: Image.asset('assets/HARRISA.png'),
    ),
  ];
  List<dynamic> cardItems2 = [
    'assets/LAAYE.png',
    Container(
      child: Image.asset('assets/LaayeRecipie.png'),
    ),
  ];

  @override
  State<CuisineCarousel> createState() => _CuisineCarouselState();
}

class _CuisineCarouselState extends State<CuisineCarousel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CarouselSlider(
          items: [
            FlipCarousel(
              borderRadius: BorderRadius.circular(40),
              items: widget.cardItems,
              transitionDuration: const Duration(milliseconds: 400),
              isAssetImage: true,
              border: Border.all(width: 5, color: const Color(0xFFFFFFFF)),
              fit: BoxFit.cover,
              perspectiveFactor: 0.002,
              layersGap: 30,
              onChange: (int pageIndex) {
                print(pageIndex);
              },
              onTap: () {
                print("tap");
              },
            ),
            // Harrisa(),
            Container(
              color: Colors.yellow,
            ),
          ],
          options: CarouselOptions(
            height: 200,
              enlargeCenterPage: true,
              enlargeFactor: 0.5,
              aspectRatio: 16 / 9,
              enableInfiniteScroll: true,
              viewportFraction: 0.7,
          ),
        ),
      ),
    );
  }
}
