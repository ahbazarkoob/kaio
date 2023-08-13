// ignore_for_file: must_be_immutable, non_constant_identifier_names, use_key_in_widget_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kaio/MainScreens/Cuisine.dart';
import 'package:kaio/constants.dart';

import '../MainScreens/handicrafts.dart';
import '../main.dart';

class DestTemplate extends StatefulWidget {
  String placeName = '';
  var cimage1 = '';
  var cimage2 = '';
  var cimage3 = '';
  var cimage4 = '';
  var cimage5 = '';
  String DescriptionPlace = '';
  var place1 = '';
  var place2 = '';
  var place3 = '';
  var place4 = '';
  var place5 = '';
  var thing1 = '';
  var thing2 = '';
  var thing3 = '';
  var thing4 = '';
  var thing5 = '';
  String BestTime = '';

  DestTemplate(
      {required this.placeName,
      required this.cimage1,
      required this.cimage2,
      required this.cimage3,
      required this.cimage4,
      required this.cimage5,
      required this.DescriptionPlace,
      required this.place1,
      required this.place2,
      required this.place3,
      required this.place4,
      required this.place5,
      required this.thing1,
      required this.thing2,
      required this.thing3,
      required this.thing4,
      required this.thing5,
      required this.BestTime});

  @override
  State<DestTemplate> createState() => _DestTemplateState();
}

class _DestTemplateState extends State<DestTemplate> {
  @override
  Widget build(BuildContext context) {
    devH = MediaQuery.of(context).size.height;
    devW = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Center(
            child: Text(
              widget.placeName,
              // 'Srinagar',
              style: kHeading,
            ),
          ),
          Stack(
            children: [
              CarouselSlider(
                items: [
                  PlaceCard(
                      imagePath: widget.cimage1, widgetName: Handicraft()),
                  PlaceCard(
                      imagePath: widget.cimage2, widgetName: Handicraft()),
                  PlaceCard(
                      imagePath: widget.cimage3, widgetName: Handicraft()),
                  PlaceCard(
                      imagePath: widget.cimage4, widgetName: Handicraft()),
                  PlaceCard(
                      imagePath: widget.cimage5, widgetName: Handicraft()),
                ],
                options: CarouselOptions(
                  height: 300.0,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayCurve: Curves.easeIn,
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  enableInfiniteScroll: true,
                  viewportFraction: 1,
                ),
              ),
              Positioned(
                bottom: -5,
                top: -5,
                left: 230,
                right: 10,
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            widget.DescriptionPlace,
                            textAlign: TextAlign.justify,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          DefaultTabController(
            length: 3,
            child: Expanded(
              child: Column(
                children: [
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(25.0)),
                    child: TabBar(
                      indicator: BoxDecoration(
                          color: Color(0xff85586F),
                          borderRadius: BorderRadius.circular(25.0)),
                      tabs: [
                        Tab(text: 'Places to visit'),
                        Tab(text: 'Things to do'),
                        Tab(text: 'Best time to visit'),
                      ],
                      labelColor: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        SingleChildScrollView(
                          child: Container(
                            child: Column(
                              children: [
                                PlaceCard(
                                    imagePath: widget.place1,
                                    widgetName: Handicraft()),
                                PlaceCard(
                                    imagePath: widget.place2,
                                    widgetName: Handicraft()),
                                PlaceCard(
                                    imagePath: widget.place3,
                                    widgetName: Handicraft()),
                                PlaceCard(
                                    imagePath: widget.place4,
                                    widgetName: Handicraft()),
                                PlaceCard(
                                    imagePath: widget.place5,
                                    widgetName: Handicraft())
                              ],
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          child: Container(
                            child: Column(
                              children: [
                                PlaceCard(
                                    imagePath: widget.thing1,
                                    widgetName: Cuisine()),
                                PlaceCard(
                                    imagePath: widget.thing2,
                                    widgetName: Cuisine()),
                                PlaceCard(
                                    imagePath: widget.thing3,
                                    widgetName: Cuisine()),
                                PlaceCard(
                                    imagePath: widget.thing4,
                                    widgetName: Cuisine()),
                                PlaceCard(
                                    imagePath: widget.thing5,
                                    widgetName: Cuisine())
                              ],
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          child: Container(
                            margin: EdgeInsets.all(10),
                            child: Column(children: [
                              Text(
                                widget.BestTime,
                                style:
                                    kSubHeading.copyWith(color: Colors.black),
                                textAlign: TextAlign.justify,
                              )
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class PlaceCard extends StatelessWidget {
  String imagePath = '';
  var widgetName;
  PlaceCard({required this.imagePath, required this.widgetName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => widgetName));
        },
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: BorderSide(color: Color(0xff85586F), width: 3),
            ),
            child: Container(
              height: devH * 0.3,
              width: devW * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(imagePath),
                ),
              ),
            )));
  }
}
