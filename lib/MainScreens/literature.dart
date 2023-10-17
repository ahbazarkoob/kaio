// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, empty_constructor_bodies, must_be_immutable, prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_typing_uninitialized_variables, sized_box_for_whitespace, avoid_print, unused_element, unnecessary_string_escapes

// import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kaio/Literature/BookShape.dart';
import 'package:kaio/Literature/BookTemplate.dart';
import 'package:kaio/Literature/FetchLibrary.dart';
import 'package:kaio/Literature/Recents.dart';
import 'package:kaio/Literature/carouselCard.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/main.dart';

List<String> books = ['Poetry', 'Prose', 'History', 'New'];
List<ListTile> listname = [];

class LiteraturePage extends StatefulWidget {
  LiteraturePage({super.key});
  @override
  State<LiteraturePage> createState() => _LiteraturePageState();
}

class _LiteraturePageState extends State<LiteraturePage> {
  Future<List<Map<String, dynamic>>?> getDataFromFirestore() async {
    List<Map<String, dynamic>> dataList = [];
    try {
      QuerySnapshot querySnapshot =
          await FirebaseFirestore.instance.collection('addlibrary').get();

      for (QueryDocumentSnapshot doc in querySnapshot.docs) {
        // Convert the document data to a Map
        Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
        dataList.add(data);
      }
      for (var card in dataList) {
        // print(card['Library-Id'].toString());
        ListTile tile = ListTile(
          title: Text(card['LibraryName'].toString()),
          subtitle: Text(card['LibraryAddress'].toString()),
          leading: IconButton(
            icon: Icon(Icons.location_city),
            onPressed: () {
              // Handle button click for this item
            },
          ),
        );
        listname.add(tile);
      }
      return dataList;
    } catch (e) {
      print("Error getting data from Firestore: $e");
      return null;
    }
  }

  @override
  void initState() {
    // List<Map<String, dynamic>> data =  getDataFromFirestore();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    getDataFromFirestore();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Kaio',
                style: kSubHeading,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Recent()));
                  },
                  icon: Icon(Icons.history))
            ],
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Libraries near me',
                  style: kSubHeading.copyWith(
                      color: Theme.of(context).primaryColor),
                ),
              ),
              //LibraryCard(urlLink: 'https://bard.google.com/chat/4c5758165facedc1?utm_source=sem&utm_medium=paid-media&utm_campaign=q3enIN_sem6',),
              CarouselSlider(
                items: listname,
                options: CarouselOptions(
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 2),
                    scrollDirection: Axis.horizontal),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Book Shelf',
                  style: kSubHeading.copyWith(
                      color: Theme.of(context).primaryColor),
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
