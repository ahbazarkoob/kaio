// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, unused_import, non_constant_identifier_names, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kaio/Cuisines/FlipCarousel.dart';
import 'package:kaio/Handicrafts/Hc_papermachie.dart';
import 'package:kaio/Cuisines/recipe.dart';
import 'package:kaio/widgets/Recipe.dart';
import 'package:kaio/widgets/craft.dart';
import 'package:kaio/widgets/selection.dart';
import '../constants.dart';
import '../main.dart';


// ignore: must_be_immutable
class Handicraft extends StatefulWidget {

  Handicraft({super.key});

  @override
  State<Handicraft> createState() => _HandicraftState();
}

class _HandicraftState extends State<Handicraft> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search',
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Color(0xff85586F), width: 2)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Color(0xff85586F), width: 2)),
              ),
            ),
          ),
          CarouselSlider(
            items: [
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.pink,
              ),
              Container(
                color: Colors.yellow,
              ),
            ],
            options: CarouselOptions(
              height: 160.0,
              enlargeCenterPage: true,
              enlargeFactor: 0.5,
              aspectRatio: 16 / 9,
              enableInfiniteScroll: true,
              viewportFraction: 0.5,
            ),
          ),
          SizedBox(
            height: 20,
          ),
           DefaultTabController(
            length: 5,
            child: Expanded(
              child: Column(
                children: [
                  Container(height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(25.0)),
                  child: TabBar( isScrollable: true,indicator: BoxDecoration(
                    color: Color(0xff85586F),
                    borderRadius:  BorderRadius.circular(25.0)
                  ) ,
                tabs: [
                  Tab(text: 'Paper-Mache'),
                  Tab(text: 'Carpets, Rugs and Mats'),
                  Tab(text: 'Embroidery Work'),
                  Tab(text: 'Stone Craft'),
                  Tab(text: 'Others'),
                ],
                labelColor: Colors.black,
            ),),
             Expanded(
              child: TabBarView(
                children: [
                  PaperMac(),
                  CRM(),
                  Embroidery(),
                  StoneCraft(),
                  Others()
                ],
              ),
            ),
          ],),
                    ),
      ),
    ])));
  }
}

class PaperMac extends StatelessWidget {
  const PaperMac({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          CraftCard(imagePath: 'assets/FlowerVase.png'),
          CraftCard(imagePath: 'assets/TableLamp.png'),
          CraftCard(imagePath: 'assets/Clutch.png'),
          CraftCard(imagePath: 'assets/FruitBowl.png')
        ],
      ),
    );
  }
}


class CRM extends StatelessWidget {
  const CRM({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          CraftCard(imagePath: 'assets/Carpet1.png'),
          CraftCard(imagePath: 'assets/Carpet2.png'),
          CraftCard(imagePath: 'assets/Carpet3.png'),
          CraftCard(imagePath: 'assets/Carpet4.png')
        ],
      ),
    );
  }
}

class Embroidery extends StatelessWidget {
  const Embroidery({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Text('Emboidery Work',style: kHeading,),
          // CraftCard(name: Paper_machie(),),
          // CraftCard(name: Paper_machie(),),
          // CraftCard(name: Paper_machie(),),
        ],
      ),
    );
  }
}

class StoneCraft extends StatelessWidget {
  const StoneCraft({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Text('Stone Craft',style: kHeading,),
          // CraftCard(name: Paper_machie(),),
          // CraftCard(name: Paper_machie(),),
          // CraftCard(name: Paper_machie(),),
        ],
      ),
    );
  }
}

class Others extends StatelessWidget {
  const Others({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Text('Others',style: kHeading,),
          // CraftCard(name: Paper_machie(),),
          // CraftCard(name: Paper_machie(),),
          // CraftCard(name: Paper_machie(),),
        ],
      ),
    );
  }
}