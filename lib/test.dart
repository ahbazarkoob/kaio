// ignore_for_file: avoid_print, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flip_carousel/flip_carousel.dart';
import 'package:kaio/main.dart';

class Test extends StatefulWidget {
  List<dynamic> cardItems = [
    'assets/HarrisaRecipie.png',
    Container(color: Colors.amber, child: Image(image: AssetImage('assets/HARRISA.png'))),
  ];
  Test({super.key});
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlipCarousel(
          items: widget.cardItems,
          transitionDuration: const Duration(milliseconds: 400),
          isAssetImage: true,
          border: Border.all(width: 5, color: const Color(0xFFFFFFFF)),
          width: devW*0.9,
          height: 330,
          fit: BoxFit.fill,
          perspectiveFactor: 0.002,
          layersGap: 30,
          onChange: (int pageIndex) {
            print(pageIndex);
          },
          onTap: () {
            print("tap");
          },
        ),
      ),
    );
  }
}