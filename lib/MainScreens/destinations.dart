// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_const_constructors_in_immutables, non_constant_identifier_names, unused_import, unused_element, avoid_unnecessary_containers, must_be_immutable, use_key_in_widget_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:kaio/Destinations/DestinationSecondPage.dart';
import 'package:kaio/Destinations/Features.dart';
import 'package:kaio/Destinations/Container.dart';
import 'package:kaio/Destinations/Tab.dart';
import 'package:kaio/MainScreens/literature.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/main.dart';
import 'package:kaio/widgets/craft.dart';

PageController controller = PageController();

class Destination extends StatelessWidget {
  final controller = PageController();
  int selectedPage = 0;

  Destination({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [_DestinationPage(), _GradientWidget(), _topLayerWidget()],
      ),
    );
  }

  Widget _DestinationPage() {
    return SizedBox(
      height: devH * 0.5,
      width: devW,
      child: Image.asset(fit: BoxFit.cover, 'assets/Destination/Main/kashmir.png'),
    );
  }

  Widget _GradientWidget() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: devH * 0.7,
          width: devW,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xffd1d1cd), Colors.transparent],
                  stops: [0.65, 1.0],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter)),
        ));
  }

  Widget _topLayerWidget() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(
              height: devH * 0.40,
            ),
            DestinationFeatures(),
            SizedBox(
              height: devH * 0.01,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'North',
                  style: kHeading,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      DestinationContainer(imagePath: 'assets/Destination/Main/baramulla.png',nextPage: LiteraturePage(),),
                      DestinationContainer(imagePath: 'assets/Destination/Main/ganderbal.png',
                        nextPage: SecondPage(),
                      ),
                      DestinationContainer(imagePath: 'assets/Destination/Main/bandipora.png',
                        nextPage: LiteraturePage(),
                      ),
                      DestinationContainer(imagePath: 'assets/Destination/Main/kupwara.png',
                        nextPage: LiteraturePage(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'South',
                  style: kHeading,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      DestinationContainer(imagePath: 'assets/Destination/Main/kulgam.png',
                        nextPage: LiteraturePage(),
                      ),
                      DestinationContainer(imagePath: 'assets/Destination/Main/pulwama.png',
                        nextPage: LiteraturePage(),
                      ),
                      DestinationContainer(imagePath: 'assets/Destination/Main/shopian.png',
                        nextPage: LiteraturePage(),
                      ),
                      DestinationContainer(imagePath: 'assets/Destination/Main/anantnag.png',
                        nextPage: LiteraturePage(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Central',
                  style: kHeading,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      DestinationContainer(imagePath: 'assets/Destination/Main/srinagar.png',
                        nextPage: LiteraturePage(),
                      ),
                      DestinationContainer(imagePath: 'assets/Destination/Main/budgam.png',
                        nextPage: LiteraturePage(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

