// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, empty_constructor_bodies, must_be_immutable

import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/widgets/bookshape.dart';
import 'package:kaio/widgets/selection.dart';

class LiteraturePage extends StatefulWidget {
  bool showPoetry = false, showHistory = false, showFamousWriters = false;
  LiteraturePage({super.key});

  @override
  State<LiteraturePage> createState() => _LiteraturePageState();
}

class _LiteraturePageState extends State<LiteraturePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.black, width: 3)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.black, width: 3)),
                ),
              ),
            ),
            Text('My Books', style: kHeading),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(                                       
                  children: [
                    BookShape(function: () {}, imagepath: 'assets/argami.jpg'),
                    BookShape(function: () {}, imagepath: 'assets/rasol.jpg'),
                    BookShape(function: () {}, imagepath: 'assets/rahman.jpg'),
                    BookShape(function: () {}, imagepath: 'assets/kral.jpg'),
                    BookShape(function: () {}, imagepath: 'assets/museeki.jpg'),
                  ],
                )),
            Text(
              'Book Shelf',
              style: kHeading,
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SelectionButton(
                      function: () {
                        setState(() {
                          widget.showPoetry = true;
                        });
                      },
                      buttonText: 'Poetry'),
                  SelectionButton(
                      function: () {
                        widget.showHistory = true;
                        setState(() {});
                      },
                      buttonText: 'History'),
                  SelectionButton(
                      function: () {
                        widget.showFamousWriters = true;
                        setState(() {});
                      },
                      buttonText: 'Famous Writers'),
                  SelectionButton(function: () {}, buttonText: 'Religion'),
                  SelectionButton(function: () {}, buttonText: 'Folk'),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  widget.showPoetry ? Poetry() : Default(),
                  widget.showHistory ? History() : Default(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Poetry extends StatelessWidget {
  const Poetry({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          BookShape(function: () {}, imagepath: 'assets/argami.jpg'),
          BookShape(function: () {}, imagepath: 'assets/argami.jpg'),
          BookShape(function: () {}, imagepath: 'assets/argami.jpg'),
          BookShape(function: () {}, imagepath: 'assets/argami.jpg'),
          BookShape(function: () {}, imagepath: 'assets/argami.jpg'),
          BookShape(function: () {}, imagepath: 'assets/argami.jpg'),
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
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          BookShape(function: () {}, imagepath: 'assets/rasol.jpg'),
          BookShape(function: () {}, imagepath: 'assets/rasol.jpg'),
          BookShape(function: () {}, imagepath: 'assets/rasol.jpg'),
          BookShape(function: () {}, imagepath: 'assets/rasol.jpg'),
          BookShape(function: () {}, imagepath: 'assets/rasol.jpg'),
          BookShape(function: () {}, imagepath: 'assets/rasol.jpg'),
        ],
      ),
    );
  }
}

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          BookShape(function: () {}, imagepath: 'assets/kral.jpg'),
          BookShape(function: () {}, imagepath: 'assets/kral.jpg'),
          BookShape(function: () {}, imagepath: 'assets/kral.jpg'),
          BookShape(function: () {}, imagepath: 'assets/kral.jpg'),
          BookShape(function: () {}, imagepath: 'assets/kral.jpg'),
          BookShape(function: () {}, imagepath: 'assets/kral.jpg'),
        ],
      ),
    );
  }
}

class FamousWriters extends StatelessWidget {
  const FamousWriters({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          BookShape(function: () {}, imagepath: 'assets/mehjoor.jpg'),
          BookShape(function: () {}, imagepath: 'assets/mehjoor.jpg'),
          BookShape(function: () {}, imagepath: 'assets/mehjoor.jpg'),
          BookShape(function: () {}, imagepath: 'assets/mehjoor.jpg'),
          BookShape(function: () {}, imagepath: 'assets/mehjoor.jpg'),
          BookShape(function: () {}, imagepath: 'assets/mehjoor.jpg'),
        ],
      ),
    );
  }
}
