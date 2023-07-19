// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, unused_import

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kaio/Hc_papermachie.dart';
import 'package:kaio/recipe.dart';
import 'package:kaio/widgets/Recipe.dart';
import 'package:kaio/widgets/craft.dart';
import 'package:kaio/widgets/selection.dart';
import 'constants.dart';
import 'literature.dart';
import 'main.dart';

bool showDefault = true,
    showPaperMac = false,
    showCRM = false,
    showEmb = false,
    showStoneCraft = false,
    showOther = false;

// ignore: must_be_immutable
class Handicraft extends StatefulWidget {
  var i;
  void Selection() {
    if (showPaperMac == true) {
      i = PaperMac();
    } else if (showCRM == true) {
      i = CRM();
    } else if (showEmb == true) {
      i = Embroidery();
    } else if (showStoneCraft == true) {
      i = StoneCraft();
    } else if (showOther == true) {
      i = Others();
    } else {
      i = Default();
    }
  }

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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SelectionButton(
                    function: () {
                      showDefault = false;
                      showPaperMac = true;
                      showCRM = false;
                      showEmb = false;
                      showStoneCraft = false;
                      showOther = false;
                      setState(() {
                        widget.Selection();
                      });
                    },
                    buttonText: 'Papier-Mâché'),
                SelectionButton(
                    function: () {
                      showDefault = false;
                      showPaperMac = false;
                      showCRM = true;
                      showEmb = false;
                      showStoneCraft = false;
                      showOther = false;
                      setState(() {
                        widget.Selection();
                      });
                    },
                    buttonText: 'HomeMade'),
                SelectionButton(
                    function: () {
                      showDefault = false;
                      showPaperMac = false;
                      showCRM = false;
                      showEmb = true;
                      showStoneCraft = false;
                      showOther = false;
                      setState(() {
                        widget.Selection();
                      });
                    },
                    buttonText: 'Wazwan'),
                SelectionButton(
                    function: () {
                      showDefault = false;
                      showPaperMac = false;
                      showCRM = false;
                      showEmb = false;
                      showStoneCraft = true;
                      showOther = false;
                      setState(() {
                        widget.Selection();
                      });
                    },
                    buttonText: 'Deserts'),
                SelectionButton(
                    function: () {
                      showDefault = false;
                      showPaperMac = false;
                      showCRM = false;
                      showEmb = false;
                      showStoneCraft = false;
                      showOther = true;
                      setState(() {
                        widget.Selection();
                      });
                    },
                    buttonText: 'Other'),
              ],
            ),
          ),
          Container(
              height: devH * 0.45,
              width: devW * 0.9,
              child: showDefault ? Default() : widget.i),
        ],
      ),
    ));
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
          Text('PaperMachie',style: kHeading,),
          CraftCard(name: Paper_machie(),),
          CraftCard(name: Paper_machie(),),
          CraftCard(name: Paper_machie(),),
        ],
      ),
    );
  }
}

class Default extends StatelessWidget {
  const Default({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Text('Default',style: kHeading,),
          CraftCard(name: Paper_machie(),),
          CraftCard(name: Paper_machie(),),
          CraftCard(name: Paper_machie(),),
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
          Text('Carpets, Rugs and Mats',style: kHeading,),
          CraftCard(name: Paper_machie(),),
          CraftCard(name: Paper_machie(),),
          CraftCard(name: Paper_machie(),),
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
          CraftCard(name: Paper_machie(),),
          CraftCard(name: Paper_machie(),),
          CraftCard(name: Paper_machie(),),
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
          CraftCard(name: Paper_machie(),),
          CraftCard(name: Paper_machie(),),
          CraftCard(name: Paper_machie(),),
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
          CraftCard(name: Paper_machie(),),
          CraftCard(name: Paper_machie(),),
          CraftCard(name: Paper_machie(),),
        ],
      ),
    );
  }
}