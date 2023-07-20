// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, empty_constructor_bodies, must_be_immutable, prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_typing_uninitialized_variables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:kaio/Literature/Book.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/widgets/bookshape.dart';
import '../../main.dart';

class LiteratureTab extends StatelessWidget {

  LiteratureTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 5, // Number of tabs
        child: Scaffold(
            body: Column(
              children: [
                TabBar(
                  tabs: [
                    Tab(text: 'Poetry'),
                    Tab(text: 'History'),
                    Tab(text: 'Famous Writers'),
                    Tab(text: 'Religion'),
                    Tab(text: 'Folk'),
                  ],
                  labelColor: Color(0xff85586F),
                ),
              TabBarView(
            children: [
              Poetry(),
              History(),
              FamousWriters(),
              Religion(),
              Default(),
            ],
          ),
              ],
            ),

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

class Default extends StatelessWidget {
  const Default({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        BookShape(name: Book(), imagepath: 'assets/rasol.jpg'),
        BookShape(name: Book(), imagepath: 'assets/rasol.jpg'),
        BookShape(name: Book(), imagepath: 'assets/rasol.jpg'),
        BookShape(name: Book(), imagepath: 'assets/rasol.jpg'),
        BookShape(name: Book(), imagepath: 'assets/rasol.jpg'),
        BookShape(name: Book(), imagepath: 'assets/rasol.jpg'),
        BookShape(name: Book(), imagepath: 'assets/rasol.jpg'),
        BookShape(name: Book(), imagepath: 'assets/rasol.jpg'),
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


