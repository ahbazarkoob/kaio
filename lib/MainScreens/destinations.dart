// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_const_constructors_in_immutables, non_constant_identifier_names, unused_import, unused_element, avoid_unnecessary_containers, must_be_immutable, use_key_in_widget_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:kaio/Destinations/DestinationSecondPage.dart';
import 'package:kaio/Destinations/Features.dart';
import 'package:kaio/Destinations/Container.dart';
import 'package:kaio/Destinations/Tab.dart';
import 'package:kaio/Destinations/desttemplate.dart';
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
      child:
          Image.asset(fit: BoxFit.cover, 'assets/Destination/Main/kashmir.png'),
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
                      DestinationContainer(
                          imagePath: 'assets/Destination/Main/baramulla.png',
                          nextPage: Baramulla()),
                      DestinationContainer(
                        imagePath: 'assets/Destination/Main/ganderbal.png',
                        nextPage: Ganderbal(),
                      ),
                      DestinationContainer(
                        imagePath: 'assets/Destination/Main/bandipora.png',
                        nextPage: Bandipora(),
                      ),
                      DestinationContainer(
                        imagePath: 'assets/Destination/Main/kupwara.png',
                        nextPage: Kupwara(),
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
                      DestinationContainer(
                        imagePath: 'assets/Destination/Main/kulgam.png',
                        nextPage: LiteraturePage(),
                      ),
                      DestinationContainer(
                        imagePath: 'assets/Destination/Main/pulwama.png',
                        nextPage: LiteraturePage(),
                      ),
                      DestinationContainer(
                        imagePath: 'assets/Destination/Main/shopian.png',
                        nextPage: LiteraturePage(),
                      ),
                      DestinationContainer(
                        imagePath: 'assets/Destination/Main/anantnag.png',
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
                      DestinationContainer(
                        imagePath: 'assets/Destination/Main/srinagar.png',
                        nextPage: LiteraturePage(),
                      ),
                      DestinationContainer(
                        imagePath: 'assets/Destination/Main/budgam.png',
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

  Widget Baramulla() {
    return DestTemplate(
        DescriptionPlace: "hey",
        BestTime: 'Summer',
        cimage1: 'assets/Destination/Main/anantnag.png',
        cimage2: 'assets/Destination/Main/anantnag.png',
        cimage3: 'assets/Destination/Main/anantnag.png',
        cimage4: 'assets/Destination/Main/anantnag.png',
        cimage5: 'assets/Destination/Main/anantnag.png',
        place1: 'assets/Destination/Baramulla/Gulmarg.png',
        place2: 'assets/Destination/Baramulla/DrungWaterfall.png',
        place3: 'assets/Destination/Baramulla/RaniTemple.png',
        place4: 'assets/Destination/Baramulla/NingleNallah.png',
        place5: 'assets/Destination/Baramulla/ApharwatPeak.png',
        placeName: 'Baramulla',
        thing1: 'assets/Destination/Main/anantnag.png',
        thing2: 'assets/Destination/Main/anantnag.png',
        thing3: 'assets/Destination/Main/anantnag.png',
        thing4: 'assets/Destination/Main/anantnag.png',
        thing5: 'assets/Destination/Main/anantnag.png');
  }

  Widget Ganderbal() {
    return DestTemplate(
        placeName: 'Ganderbal',
        cimage1: '',
        cimage2: '',
        cimage3: '',
        cimage4: '',
        cimage5: '',
        DescriptionPlace: 'DescriptionPlace',
        place1: 'assets/Destination/Ganderbal/Sonamarg.png',
        place2: 'assets/Destination/Ganderbal/Harmukh.png',
        place3: 'assets/Destination/Ganderbal/ManasbalLake.png',
        place4: 'assets/Destination/Ganderbal/Prang.png',
        place5: 'assets/Destination/Ganderbal/MohandMarg.png',
        thing1: '',
        thing2: '',
        thing3: '',
        thing4: '',
        thing5: '',
        BestTime: '');
  }

  Widget Bandipora() {
    return DestTemplate(
        placeName: 'Ganderbal',
        cimage1: '',
        cimage2: '',
        cimage3: '',
        cimage4: '',
        cimage5: '',
        DescriptionPlace: 'DescriptionPlace',
        place1: 'assets/Destination/Bandipora/WullarLake.png',
        place2: 'assets/Destination/Bandipora/GurezValley.png',
        place3: 'assets/Destination/Bandipora/ChotaAmarnath.png',
        place4: 'assets/Destination/Bandipora/NishatPark.png',
        place5: 'assets/Destination/Bandipora/Watlab.png',
        thing1: '',
        thing2: '',
        thing3: '',
        thing4: '',
        thing5: '',
        BestTime: '');
  }

  Widget Kupwara() {
    return DestTemplate(
        placeName: 'Ganderbal',
        cimage1: '',
        cimage2: '',
        cimage3: '',
        cimage4: '',
        cimage5: '',
        DescriptionPlace: 'DescriptionPlace',
        place1: 'assets/Destination/Kupwara/Lolab.png',
        place2: 'assets/Destination/Kupwara/SadhnaPass.png',
        place3: 'assets/Destination/Kupwara/BungusValley.png',
        place4: 'assets/Destination/Kupwara/Kalaroos.png',
        place5: '',
        thing1: '',
        thing2: '',
        thing3: '',
        thing4: '',
        thing5: '',
        BestTime: '');
  }
}
