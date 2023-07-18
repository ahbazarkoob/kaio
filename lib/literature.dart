// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, empty_constructor_bodies, must_be_immutable, prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_typing_uninitialized_variables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:kaio/Book.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/widgets/bookshape.dart';
import 'package:kaio/widgets/selection.dart';

var devH, devW;
class LiteraturePage extends StatefulWidget {
  var i;
  void Selection() {
    if (showPoetry == true) {
      i = Poetry();
    } else if (showHistory == true) {
      i = History();
    } else if (showFamousWriters == true) {
      i = FamousWriters();
    } else if (showReligion == true) {
      i = Religion();
    } else {
      i = Default();
    }
  }

  LiteraturePage({super.key});

  @override
  State<LiteraturePage> createState() => _LiteraturePageState();
}

bool showDefault = true,
    showPoetry = false,
    showHistory = false,
    showFamousWriters = false,
    showReligion = false;

class _LiteraturePageState extends State<LiteraturePage> {
  @override
  Widget build(BuildContext context) {
    devH = MediaQuery.of(context).size.height;
    devW = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide:
                          BorderSide(color: Color(0xff85586F), width: 2)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide:
                          BorderSide(color: Color(0xff85586F), width: 2)),
                ),
              ),
            ),
            Text('My Books', style: kHeading),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    BookShape(name: Book(), imagepath: 'assets/argami.jpg'),
                    BookShape(name: Book(), imagepath: 'assets/rasol.jpg'),
                    BookShape(name: Book(), imagepath: 'assets/rahman.jpg'),
                    BookShape(name: Book(), imagepath: 'assets/kral.jpg'),
                    BookShape(name: Book(), imagepath: 'assets/museeki.jpg'),
                  ],
                )),
            Text(
              'Book Shelf',
              style: kHeading,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SelectionButton(
                      function: () {
                        showPoetry = true;
                        showHistory = false;
                        showFamousWriters = false;
                        showDefault = false;
                        setState(() {
                          widget.Selection();
                        });
                      },
                      buttonText: 'Poetry'),
                  SelectionButton(
                      function: () {
                        showHistory = true;
                        showPoetry = false;
                        showFamousWriters = false;
                        showDefault = false;
                        setState(() {
                          widget.Selection();
                        });
                      },
                      buttonText: 'History'),
                  SelectionButton(
                      function: () {
                        showFamousWriters = true;
                        showPoetry = false;
                        showHistory = false;
                        showDefault = false;
                        setState(() {
                          widget.Selection();
                        });
                      },
                      buttonText: 'Famous Writers'),
                  SelectionButton(
                      function: () {
                        showReligion = true;
                        showFamousWriters = false;
                        showPoetry = false;
                        showHistory = false;
                        showDefault = false;
                        setState(() {
                          widget.Selection();
                        });
                      },
                      buttonText: 'Religion'),
                  SelectionButton(function: () {}, buttonText: 'Folk'),
                ],
              ),
            ),
            Container(
                height: devH * 0.45,
                width: devW * 0.9,
                child: showDefault ? Default() : widget.i),
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
    return GridView.count(
      crossAxisCount: 3,
      children: [
        BookShape(name: Book(), imagepath: 'assets/argami.jpg'),
        BookShape(name: Book(), imagepath: 'assets/argami.jpg'),
        BookShape(name: Book() , imagepath: 'assets/argami.jpg'),
        BookShape(name: Book() , imagepath: 'assets/argami.jpg'),
        BookShape(name: Book() , imagepath: 'assets/argami.jpg'),
        BookShape(name: Book() , imagepath: 'assets/argami.jpg'),
        BookShape(name: Book() , imagepath: 'assets/argami.jpg'),
        BookShape(name: Book() , imagepath: 'assets/argami.jpg'),
        
      ],
    );
  }
}

class Default extends StatelessWidget {
  const Default({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: [
        BookShape(name: Book() , imagepath: 'assets/rasol.jpg'),
        BookShape(name: Book() , imagepath: 'assets/rasol.jpg'),
        BookShape(name: Book() , imagepath: 'assets/rasol.jpg'),
        BookShape(name: Book() , imagepath: 'assets/rasol.jpg'),
        BookShape(name: Book() , imagepath: 'assets/rasol.jpg'),
        BookShape(name: Book() , imagepath: 'assets/rasol.jpg'),
        BookShape(name: Book() , imagepath: 'assets/rasol.jpg'),
        BookShape(name: Book() , imagepath: 'assets/rasol.jpg'),
      ],
    );
  }
}

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: [
        BookShape(name: Book() ,imagepath: 'assets/kral.jpg'),
        BookShape(name: Book() ,imagepath: 'assets/kral.jpg'),
        BookShape(name: Book() ,imagepath: 'assets/kral.jpg'),
        BookShape(name: Book() ,imagepath: 'assets/kral.jpg'),
        BookShape(name: Book() ,imagepath: 'assets/kral.jpg'),
        BookShape(name: Book() ,imagepath: 'assets/kral.jpg'),
      ],
    );
  }
}

class FamousWriters extends StatelessWidget {
  const FamousWriters({super.key});


  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: [
        BookShape(name: Book() ,imagepath: 'assets/mehjoor.jpg'),
        BookShape(name: Book() ,imagepath: 'assets/mehjoor.jpg'),
        BookShape(name: Book() , imagepath: 'assets/mehjoor.jpg'),
        BookShape(name: Book() ,imagepath: 'assets/mehjoor.jpg'),
        BookShape(name: Book() , imagepath: 'assets/mehjoor.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
      ],
    );
  }
}

class Religion extends StatelessWidget {
  const Religion({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: [
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
      ],
    );
  }
}
