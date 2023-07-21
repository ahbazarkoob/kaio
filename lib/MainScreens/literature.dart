// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, empty_constructor_bodies, must_be_immutable, prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_typing_uninitialized_variables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:kaio/Literature/Book.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/Literature/litera.dart';
import 'package:kaio/widgets/bookshape.dart';
import '../../main.dart';

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
        body:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              // Cult(),
              Container(
                margin: EdgeInsets.only(top: 20, right: 20, left: 20),
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
              SizedBox(
                height: devH*0.009,
              ),
              Text('My Books', style: kHeading),
              SizedBox(
                height: devH*0.009,
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BookShape(name: Book(), imagepath: 'assets/argami.jpg'),
                      BookShape(name: Book(), imagepath: 'assets/rasol.jpg'),
                      BookShape(name: Book(), imagepath: 'assets/rahman.jpg'),
                      BookShape(name: Book(), imagepath: 'assets/kral.jpg'),
                      BookShape(name: Book(), imagepath: 'assets/museeki.jpg'),
                    ],
                  )),
              SizedBox(
                height: devH*0.009,
              ),
              Text(
                'Book Shelf',
                style: kHeading,
              ),
              SizedBox(
                height: devH*0.009,
              ),
          Container(
            height: devH*0.50,
            child: LiteratureSelection())
            
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
      childAspectRatio: 0.8,
      crossAxisCount: 2,
      children: [
        BookShape(name: Book(), imagepath: 'assets/argami.jpg'),
        BookShape(name: Book(), imagepath: 'assets/argami.jpg'),
        BookShape(name: Book(), imagepath: 'assets/argami.jpg'),
        BookShape(name: Book(), imagepath: 'assets/argami.jpg'),
        BookShape(name: Book(), imagepath: 'assets/argami.jpg'),
        BookShape(name: Book(), imagepath: 'assets/argami.jpg'),
        BookShape(name: Book(), imagepath: 'assets/argami.jpg'),
        BookShape(name: Book(), imagepath: 'assets/argami.jpg'),
      ],
    );
  }
}


class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.8,
      children: [
        BookShape(name: Book(), imagepath: 'assets/kral.jpg'),
        BookShape(name: Book(), imagepath: 'assets/kral.jpg'),
        BookShape(name: Book(), imagepath: 'assets/kral.jpg'),
        BookShape(name: Book(), imagepath: 'assets/kral.jpg'),
        BookShape(name: Book(), imagepath: 'assets/kral.jpg'),
        BookShape(name: Book(), imagepath: 'assets/kral.jpg'),
      ],
    );
  }
}

class FamousWriters extends StatelessWidget {
  const FamousWriters({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.8,
      children: [
        BookShape(name: Book(), imagepath: 'assets/mehjoor.jpg'),
        BookShape(name: Book(), imagepath: 'assets/mehjoor.jpg'),
        BookShape(name: Book(), imagepath: 'assets/mehjoor.jpg'),
        BookShape(name: Book(), imagepath: 'assets/mehjoor.jpg'),
        BookShape(name: Book(), imagepath: 'assets/mehjoor.jpg'),
        BookShape(name: Book(), imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book(), imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book(), imagepath: 'assets/shamas.jpg'),
      ],
    );
  }
}

class Religion extends StatelessWidget {
  const Religion({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.8,
      children: [
        BookShape(name: Book(), imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book(), imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book(), imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book(), imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book(), imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book(), imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book(), imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book(), imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book(), imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book(), imagepath: 'assets/shamas.jpg'),
      ],
    );
  }
}


  // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       SelectionButton(
              //           function: () {
              //             showPoetry = true;
              //             showHistory = false;
              //             showFamousWriters = false;
              //             showDefault = false;
              //             setState(() {
              //               widget.Selection();
              //             });
              //           },
              //           buttonText: 'Poetry'),
              //       SizedBox(width: 10,),
              //       SelectionButton(
              //           function: () {
              //             showHistory = true;
              //             showPoetry = false;
              //             showFamousWriters = false;
              //             showDefault = false;
              //             setState(() {
              //               widget.Selection();
              //             });
              //           },
              //           buttonText: 'History'),
              //       SizedBox(width: 10,),
              //       SelectionButton(
              //           function: () {
              //             showFamousWriters = true;
              //             showPoetry = false;
              //             showHistory = false;
              //             showDefault = false;
              //             setState(() {
              //               widget.Selection();
              //             });
              //           },
              //           buttonText: 'Famous Writers'),
              //       SizedBox(width: 10,),
              //       SelectionButton(
              //           function: () {
              //             showReligion = true;
              //             showFamousWriters = false;
              //             showPoetry = false;
              //             showHistory = false;
              //             showDefault = false;
              //             setState(() {
              //               widget.Selection();
              //             });
              //           },
              //           buttonText: 'Religion'),
              //       SizedBox(width: 10,),
              //       SelectionButton(function: () {}, buttonText: 'Folk'),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: devH*0.009,
              // ),
              // Center(
              //   child: Container(
              //       height: devH * 0.50,
              //       width: devW * 0.9,
              //       child: showDefault ? Default() : widget.i),
              // ),