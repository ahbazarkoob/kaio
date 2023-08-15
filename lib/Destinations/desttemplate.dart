// ignore_for_file: must_be_immutable, non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_typing_uninitialized_variables, unused_import

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kaio/MainScreens/Cuisine.dart';
import 'package:kaio/constants.dart';

import '../MainScreens/handicrafts.dart';
import '../main.dart';

class DestTemplate extends StatefulWidget {
  String placeName = '';
  List<String> cimages = [];
  String DescriptionPlace = '';
  List<String> places = [];
  List<String> things = [];

  DestTemplate(
      {
    required this.placeName,
    required this.cimages,
    required this.DescriptionPlace,
    required this.places,
    required this.things,
  });

  @override
  State<DestTemplate> createState() => _DestTemplateState();
}

class _DestTemplateState extends State<DestTemplate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Center(
            child: Text(
              widget.placeName,
              style: kHeading,
            ),
          ),
          Stack(
            children: [
              CarouselSlider(
                items: widget.cimages.map((cimage) {
                  return PlaceCard(imagePath: cimage);
                }).toList(),
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
            length: 2,
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
                              children: widget.places.map((place) {
                                return PlaceCard(
                                    imagePath: place);
                              }).toList(),
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          child: Container(
                            child: Column(
                              children: widget.things.map((thing) {
                                return PlaceCard(
                                    imagePath: thing);
                              }).toList(),

                            ),
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
  PlaceCard({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
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
        ));
  }
}
