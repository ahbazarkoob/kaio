// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, sized_box_for_whitespace, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/Cuisines/recipe.dart';
import 'package:kaio/widgets/Recipe.dart';



// ignore: must_be_immutable
class Cuisine extends StatefulWidget {
  Cuisine({super.key});

  @override
  State<Cuisine> createState() => _CuisineState();
}

class _CuisineState extends State<Cuisine> {
  
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
                  child: TabBar( 
                    isScrollable: true,
                    indicator: BoxDecoration(
                    color: Color(0xff85586F),
                    borderRadius:  BorderRadius.circular(25.0)
                  ) ,
                tabs: [
                  Tab(text: 'Beverages'),
                  Tab(text: 'HomeMade'),
                  Tab(text: 'Wazwan'),
                  Tab(text: 'Deserts'),
                  Tab(text: 'Others'),
                ],
                labelColor: Colors.black,
            ),),
             Expanded(
              child: TabBarView(
                children: [
                  Beverages(),
                  HomeMade(),
                  Wazwan(),
                  Deserts(),
                  Others()
                ],
              ),
            ),
          ],),
                    ),
      ),
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