// ignore_for_file: must_be_immutable, file_names, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:kaio/main.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

PageController controller = PageController();
List pageViewItems = [
  'assets/EmbTilla1.png',
  'assets/EmbTilla2.png',
  'assets/EmbTilla3.png',
  'assets/EmbTilla4.png',
];

class DestinationPageView extends StatefulWidget {
  final controller = PageController();
  int selectedPage = 0;

  DestinationPageView({super.key});

  @override
  State<DestinationPageView> createState() => _DestinationPageViewState();
}

class _DestinationPageViewState extends State<DestinationPageView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: devH*0.3,
      color: Colors.amber.shade200,
      child: Column(
        children: [
          Container(
            height: devH * 0.285,
            child: PageView(
              onPageChanged: (page) {
                widget.selectedPage = page;
              },
              controller: controller,
              children: [
                Image.asset(fit: BoxFit.fill, 'assets/EmbTilla1.png'),
                Image.asset(fit: BoxFit.fill, 'assets/EmbTilla2.png'),
                Image.asset(fit: BoxFit.fill, 'assets/EmbTilla3.png'),
                Image.asset(fit: BoxFit.fill, 'assets/EmbTilla4.png'),
              ],
            ),
          ),
          PageViewDotIndicator(
              currentItem: widget.selectedPage,
              count: 4,
              unselectedColor: Colors.grey,
              selectedColor: Colors.blue)
        ],
      ),
    );
  }
}
