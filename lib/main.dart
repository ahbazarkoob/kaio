// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_typing_uninitialized_variables, unused_import, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:kaio/Destinations/DestinationSecondPage.dart';
import 'package:kaio/MainScreens/Culture.dart';
import 'package:kaio/MainScreens/literature.dart';
import 'package:kaio/MainScreens/Cuisine.dart';
import 'package:kaio/MainScreens/destinations.dart';
import 'package:kaio/MainScreens/handicrafts.dart';
import 'package:kaio/Cuisines/recipe.dart';
import 'package:kaio/Literature/litera.dart';
import 'package:kaio/widgets/CultureCard.dart';
import 'package:kaio/widgets/Recipe.dart';

import 'Cuisines/cook.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScreen()),
  );
}

var devH, devW;

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    devH = MediaQuery.of(context).size.height;
  devW = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Kashmir App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LiteraturePage(),
                    ),
                  );
                },
                child: Container(
                  width: devW,
                  child: Center(child: Text('Kashmiri Literature'))),
              ),
            ),
            Expanded(
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Cuisine()
                    ),
                  );
                },
                child: Container(child: Center(child: Text('Kashmiri Cuisine'))),
              ),
            ),
           Expanded(
             child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Handicraft(),
                    ),
                  );
                },
                child: Container(child: Center(child: Text('Kashmiri Handicrafts'))),
              ),
           ),
            Expanded(
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Destination(),
                    ),
                  );
                },
                child: Container(child: Center(child: Text('Destinations'))),
              ),
            ),
             Expanded(
               child: OutlinedButton (
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Culture(),
                    ),
                  );
                },
                child: Container(child: Center(child: Text('Kashmiri Culture'))),
                         ),
             ),
          ],
        ),
      ),
    );
  }
}
