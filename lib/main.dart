// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_typing_uninitialized_variables, unused_import, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:kaio/Cuisine.dart';
import 'package:kaio/handicrafts.dart';
import 'package:kaio/literature.dart';
import 'package:kaio/recipe.dart';
import 'package:kaio/widgets/Recipe.dart';

import 'cook.dart';

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
                    builder: (context) => Cuisine(),
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
                    builder: (context) => Handicraft(),
                  ),
                );
              },
              child: Text('Kashmiri Handicrafts'),
            ),
          ],
        ),
      ),
    );
  }
}
