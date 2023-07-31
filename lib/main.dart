// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_typing_uninitialized_variables, unused_import, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:kaio/MainScreens/Culture.dart';
import 'package:kaio/MainScreens/literature.dart';
import 'package:kaio/MainScreens/Cuisine.dart';
import 'package:kaio/Destinations/Destinationdesc.dart';
import 'package:kaio/MainScreens/destinations.dart';
import 'package:kaio/MainScreens/handicrafts.dart';
import 'package:kaio/Cuisines/recipe.dart';
import 'package:kaio/Literature/litera.dart';
import 'package:kaio/Test1.dart';
import 'package:kaio/test.dart';
import 'package:kaio/widgets/CultureCard.dart';
import 'package:kaio/widgets/Recipe.dart';
import 'package:kaio/widgets/Travel.dart';

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
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LiteraturePage(),
                  ),
                );
              },
              child: Text('Kashmiri Literature'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Cuisine()
                  ),
                );
              },
              child: Text('Kashmiri Cuisine'),
            ),
           ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Test(),
                  ),
                );
              },
              child: Text('Kashmiri Handicrafts'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Destination(),
                  ),
                );
              },
              child: Text('Destinations'),
            ),
             ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Culture(),
                  ),
                );
              },
              child: Text('Kashmiri Culture'),
            ),
          ],
        ),
      ),
    );
  }
}
