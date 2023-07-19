// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, sized_box_for_whitespace, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/screens/recipe.dart';
import 'package:kaio/widgets/Recipe.dart';
import 'package:kaio/widgets/selection.dart';

import 'literature.dart';
import '../main.dart';

bool showDefault = true,
    showBev = false,
    showHomeM = false,
    showWazwan = false,
    showDeserts = false,
    showOther = false;

// ignore: must_be_immutable
class Cuisine extends StatefulWidget {
  var i;
  void Selection() {
    if (showBev == true) {
      i = Beverages();
    } else if (showHomeM == true) {
      i = HomeMade();
    } else if (showWazwan == true) {
      i = Wazwan();
    } else if (showDeserts == true) {
      i = Deserts();
    } else if (showOther == true) {
      i = Others();
    } else {
      i = Default();
    }
  }

  Cuisine({super.key});

  @override
  State<Cuisine> createState() => _CuisineState();
}

class _CuisineState extends State<Cuisine> {
  var i;

  void Selection() {
    if (showPoetry == true) {
      // i = Poetry();
    } else if (showHistory == true) {
      // i = History();
    } else if (showFamousWriters == true) {
      // i = FamousWriters();
    } else if (showReligion == true) {
      // i = Religion();
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    devH = MediaQuery.of(context).size.height;
    devW = MediaQuery.of(context).size.width;
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
                      showBev = true;
                      showHomeM = false;
                      showWazwan = false;
                      showDeserts = false;
                      showOther = false;
                      setState(() {
                        widget.Selection();
                      });
                    },
                    buttonText: 'Beverages'),
                SelectionButton(
                    function: () {
                      showDefault = false;
                      showBev = false;
                      showHomeM = true;
                      showWazwan = false;
                      showDeserts = false;
                      showOther = false;
                      setState(() {
                        widget.Selection();
                      });
                    },
                    buttonText: 'HomeMade'),
                SelectionButton(
                    function: () {
                      showDefault = false;
                      showBev = false;
                      showHomeM = false;
                      showWazwan = true;
                      showDeserts = false;
                      showOther = false;
                      setState(() {
                        widget.Selection();
                      });
                    },
                    buttonText: 'Wazwan'),
                SelectionButton(
                    function: () {
                      showDefault = false;
                      showBev = false;
                      showHomeM = false;
                      showWazwan = false;
                      showDeserts = true;
                      showOther = false;
                      setState(() {
                        widget.Selection();
                      });
                    },
                    buttonText: 'Deserts'),
                SelectionButton(
                    function: () {
                      showDefault = false;
                      showBev = false;
                      showHomeM = false;
                      showWazwan = false;
                      showDeserts = false;
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

class Beverages extends StatelessWidget {
  const Beverages({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Text('Bev',style: kHeading,),
          RecipeImage(name: Recipe(),),
          RecipeImage(name: Recipe(),),
          RecipeImage(name: Recipe(),),
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
          RecipeImage(name: Recipe(),),
          RecipeImage(name: Recipe(),),
          RecipeImage(name: Recipe(),),
        ],
      ),
    );
  }
}


class HomeMade extends StatelessWidget {
  const HomeMade({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Text('HomeMade',style: kHeading,),
          RecipeImage(name: Recipe(),),
          RecipeImage(name: Recipe(),),
          RecipeImage(name: Recipe(),),
        ],
      ),
    );
  }
}

class Wazwan extends StatelessWidget {
  const Wazwan({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Text('Wazwan',style: kHeading,),
          RecipeImage(name: Recipe(),),
          RecipeImage(name: Recipe(),),
          RecipeImage(name: Recipe(),),
        ],
      ),
    );
  }
}

class Deserts extends StatelessWidget {
  const Deserts({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Text('Deserts',style: kHeading,),
          RecipeImage(name: Recipe(),),
          RecipeImage(name: Recipe(),),
          RecipeImage(name: Recipe(),),
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
          RecipeImage(name: Recipe(),),
          RecipeImage(name: Recipe(),),
          RecipeImage(name: Recipe(),),
        ],
      ),
    );
  }
}