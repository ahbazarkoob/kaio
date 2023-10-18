// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, empty_constructor_bodies, must_be_immutable, prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_typing_uninitialized_variables, sized_box_for_whitespace, avoid_print, unused_element, unnecessary_string_escapes, unused_import

import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kaio/Literature/BookShape.dart';
import 'package:kaio/Literature/BookTemplate.dart';
import 'package:kaio/Literature/FetchLibrary.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/main.dart';

List<String> books = ['Poetry', 'Prose', 'History', 'New'];

class LiteraturePage extends StatefulWidget {
  LiteraturePage({super.key});
  @override
  State<LiteraturePage> createState() => _LiteraturePageState();
}

class _LiteraturePageState extends State<LiteraturePage> {
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(devH * 0.02),
                    child: Text(
                      'Libraries',
                      style: kHeading.copyWith(
                          color: Theme.of(context).primaryColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FetchLibrary(),
                  ),
                  Padding(
                    padding: EdgeInsets.all(devH * 0.02),
                    child: Text(
                      'Book Shelf',
                      style: kHeading.copyWith(
                          color: Theme.of(context).primaryColor),
                    ),
                  )
                ],
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
                              Tab(
                                text: 'Poetry',
                              ),
                              Tab(text: 'Prose'),
                              Tab(text: 'History'),
                              Tab(text: 'New'),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Poetry(),
                            Prose(),
                            History(),
                            New(),
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
      ),
    );
  }
}

class Poetry extends StatefulWidget {
  const Poetry({super.key});

  @override
  State<Poetry> createState() => _PoetryState();
}

class _PoetryState extends State<Poetry> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('books')
            .where('Category', isEqualTo: 'Poetry')
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading");
          }
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (BuildContext context, int index) {
              Map<String, dynamic> data =
                  snapshot.data!.docs[index].data()! as Map<String, dynamic>;
              return BookShape(
                name: BookTemplate(data['BID']),
                imagepath: data['Bookimage'],
              );
            },
          );
        });
  }
}

class Prose extends StatefulWidget {
  const Prose({super.key});

  @override
  State<Prose> createState() => _ProseState();
}

class _ProseState extends State<Prose> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('books')
            .where('Category', isEqualTo: 'Prose')
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading");
          }
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (BuildContext context, int index) {
              Map<String, dynamic> data =
                  snapshot.data!.docs[index].data()! as Map<String, dynamic>;
              return BookShape(
                name: BookTemplate(data['BID']),
                imagepath: data['Bookimage'],
              );
            },
          );
        });
  }
}

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('books')
            .where('Category', isEqualTo: 'History')
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading");
          }
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (BuildContext context, int index) {
              Map<String, dynamic> data =
                  snapshot.data!.docs[index].data()! as Map<String, dynamic>;
              return BookShape(
                name: BookTemplate(data['BID']),
                imagepath: data['Bookimage'],
              );
            },
          );
        });
  }
}

class New extends StatefulWidget {
  const New({super.key});

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('books')
            .where('Category', isEqualTo: 'New')
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading");
          }
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (BuildContext context, int index) {
              Map<String, dynamic> data =
                  snapshot.data!.docs[index].data()! as Map<String, dynamic>;
              return BookShape(
                name: BookTemplate(data['BID']),
                imagepath: data['Bookimage'],
              );
            },
          );
        });
  }
}
