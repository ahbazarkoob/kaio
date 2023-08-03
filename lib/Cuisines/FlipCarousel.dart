
// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, avoid_print, file_names, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flip_carousel/flip_carousel.dart';

class Flip extends StatelessWidget {
  final List<String> cardItems;

  Flip({required this.cardItems});

  @override
  Widget build(BuildContext context) {
    return FlipCarousel(
      borderRadius: BorderRadius.circular(25),
      items: cardItems
          .map((item) => Container(child: Image.asset(item)))
          .toList(),
      transitionDuration: const Duration(milliseconds: 400),
      isAssetImage: true,
      fit: BoxFit.contain,
      perspectiveFactor: 0.0015,
      layersGap: 30,
    );
  }
}
