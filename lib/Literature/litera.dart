// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, empty_constructor_bodies, must_be_immutable, prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_typing_uninitialized_variables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:kaio/Literature/Book.dart';
import 'package:kaio/widgets/bookshape.dart';

class LiteratureSelection extends StatelessWidget {
  const LiteratureSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(25.0)
                ),
                child:  TabBar(
                  indicator: BoxDecoration(
                    color: Color(0xff85586F),
                    borderRadius:  BorderRadius.circular(25.0)
                  ) ,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  tabs: const  [
                    Tab(text: 'Poetry',),
                    Tab(text: 'History',),
                    Tab(text: 'Famous Writers',),
                    Tab(text: 'Religion',),
                    Tab(text: 'Folk',),
                  ],
                ),
              ),
              const Expanded(
                  child: TabBarView(
                    children:  [
                      Poetry(),
                      History(),
                      FamousWriters(),
                      Religion(),
                      History()
                    ],
                  )
              )
            ],
          ),
        )
      ));
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
