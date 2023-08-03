// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, unused_import, non_constant_identifier_names, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, must_be_immutable, use_key_in_widget_constructors

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
            HandicraftCard(imagePath: 'assets/Carpet.png'),
            HandicraftCard(imagePath: 'assets/PaperMache.png'),
            HandicraftCard(imagePath: 'assets/Shawl.png'),
            HandicraftCard(imagePath: 'assets/tilla.png'),
            HandicraftCard(imagePath: 'assets/Copper.png'),
            HandicraftCard(imagePath: 'assets/Wood.png'),
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
                  Tab(text: 'Copper Work'),
                  Tab(text: 'Wood Carving'),
                ],
                labelColor: Colors.black,
            ),),
             Expanded(
              child: TabBarView(
                children: [
                  PaperMac(),
                  CRM(),
                  Embroidery(),
                  CopperWork(),
                  WoodCarving()
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

class CopperWork extends StatelessWidget {
  const CopperWork({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          CraftCard(imagePath: 'assets/Samavar.png'),
          CraftCard(imagePath: 'assets/Izbandsoz.png'),
          CraftCard(imagePath: 'assets/Tramisarposh.png'),
          CraftCard(imagePath: 'assets/Dryfruitbowl.png'),
        ],
      ),
    );
  }
}

class WoodCarving extends StatelessWidget {
  const WoodCarving({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          CraftCard(imagePath: 'assets/AyatUlKursi.png',),
          // CraftCard(name: Paper_machie(),),
          // CraftCard(name: Paper_machie(),),
        ],
      ),
    );
  }
}


class HandicraftCard extends StatelessWidget {
  String imagePath = '';
  HandicraftCard({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        child: Container(
            height: devH * 0.3,
            width: devW * 0.9,
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Image(fit: BoxFit.fill, image: AssetImage(imagePath))),
      ),
    );
  }
}
