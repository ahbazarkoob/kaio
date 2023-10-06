
// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';
import 'package:flip_carousel/flip_carousel.dart';
class Flip extends StatefulWidget {
  final List<String> cardItems;
String heroTag;
  Flip({required this.cardItems, required this.heroTag});

  @override
  State<Flip> createState() => _FlipState();
}

class _FlipState extends State<Flip> {
  @override
  Widget build(BuildContext context) {
    return FlipCarousel(
      // height: devH*0.145,
      // width: devW*0.40,
      // border: Border.all(color: Theme.of(context).primaryColor,width: 2),
      arrowControllersVisibility: false,
      items: widget.cardItems.map((item) => 
      Image.asset(item,)
      ).toList(),
      isAssetImage: true,
      fit: BoxFit.fitHeight,
      perspectiveFactor: 0.002,
      layersGap: 0,
      heroTag: widget.heroTag,
    );
  }
}
