// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, sized_box_for_whitespace, prefer_typing_uninitialized_variables, prefer_const_constructors_in_immutables, unused_import, avoid_unnecessary_containers

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:device_info/device_info.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:kaio/Cuisines/RecipeImage.dart';
import 'package:kaio/Cuisines/recipe.dart';
import 'package:kaio/MainScreens/literature.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/data/cuisines.dart';
import 'package:kaio/data/culture.dart';
import 'package:kaio/main.dart';

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
      appBar: AppBar(
        title: Text(
          'Kaio',
          style: kSubHeading,
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Theme.of(context).scaffoldBackgroundColor,
            ],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
              child: CarouselSlider(
                items: carouselList,
                options: CarouselOptions(
                  height: 160.0,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.5,
                  aspectRatio: 16 / 9,
                  enableInfiniteScroll: true,
                  viewportFraction: 0.5,
                ),
              ),
            ),
            DefaultTabController(
              length: 4,
              child: Expanded(
                child: Column(
                  children: [
                    Theme(
                      data: myTheme,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5, left: 5),
                        child: TabBar(
                          indicator: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(30.0)),
                          tabs: [
                            Tab(text: 'Beverages'),
                            Tab(text: 'HomeMade'),
                            Tab(text: 'Wazwan'),
                            Tab(text: 'Deserts'),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Beverages(),
                          HomeMade(),
                          Wazwan(),
                          Deserts(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Beverages extends StatelessWidget {
  const Beverages({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('recipe')
            .where('Category', isEqualTo: 'Beverages')
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading");
          }
          return ListView(
                children: snapshot.data!.docs.map((DocumentSnapshot document) {
                  Map<String, dynamic> data =
                      document.data()! as Map<String, dynamic>;
                     
                      //  final String userId = FirebaseAuth.instance.currentUser.uid;
                  return ListTile(
                    subtitle: RecipeImage(
                 name: Recipe(
                  Category: data['Category'].toString(), 
                  imagePath: data['RecipeImage'], 
                  RecipeName: data['RecipeName'], 
                  RecipeDescription: data['RecipeDescription'], 
                  itemCount: data['Ingredients'].length, 
                  buttonTexts: data['Ingredients'],
                  listname: data['Steps']),
                  assetName: data['RecipeImage'],
                  recipeName: data['RecipeName']),
                  );
                }).toList(),
              );
            });
  }
}



class HomeMade extends StatelessWidget {
  const HomeMade({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('recipe')
        .where('Category', isEqualTo: 'HomeMade')
        .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading");
          }
          return ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data =
                  document.data()! as Map<String, dynamic>;
              return ListTile(
                subtitle: RecipeImage(
                  name: LiteraturePage(),
                    assetName: data['RecipeImage'],
                    recipeName: data['RecipeName']),
              );
            }).toList(),
          );
        });
  }
}

class Wazwan extends StatelessWidget {
  const Wazwan({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('recipe')
        .where('Category', isEqualTo: 'Wazwan')
        .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading");
          }
          return ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data =
                  document.data()! as Map<String, dynamic>;
              return ListTile(
                subtitle: RecipeImage(
                  name: LiteraturePage(),
                    assetName: data['RecipeImage'],
                    recipeName: data['RecipeName']),
              );
            }).toList(),
          );
        });
  }
}

class Deserts extends StatelessWidget {
  const Deserts({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('recipe')
        .where('Category', isEqualTo: 'Deserts')
        .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading");
          }
          return ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data =
                  document.data()! as Map<String, dynamic>;
              return ListTile(
                subtitle: RecipeImage(
                  name: LiteraturePage(),
                    assetName: data['RecipeImage'],
                    recipeName: data['RecipeName']),
              );
            }).toList(),
          );
        });
  }
}
