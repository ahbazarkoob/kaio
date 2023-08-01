// ignore_for_file: avoid_print, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flip_carousel/flip_carousel.dart';
import 'package:kaio/main.dart';

class Harrisa extends StatefulWidget {
  List<dynamic> cardItems = [
    'assets/HARRISA.png',
    Container(child: Image(image: AssetImage('assets/HarrisaRecipie.png'))),
  ];
  Harrisa({super.key});
  @override
  State<Harrisa> createState() => _HarrisaState();
}

class _HarrisaState extends State<Harrisa> {
  @override
  Widget build(BuildContext context) {
    return  FlipCarousel(
        borderRadius: BorderRadius.circular(10),
        items: widget.cardItems,
        transitionDuration: const Duration(milliseconds: 400),
        isAssetImage: true,
        border: Border.all(width: 1, color: const Color(0xFFFFFFFF)),
        fit: BoxFit.fill,
        perspectiveFactor: 0.002,
        layersGap: 30,
        onChange: (int pageIndex) {
          print(pageIndex);
        },
        onTap: () {
          print("tap");
        },
      );
  }
}

