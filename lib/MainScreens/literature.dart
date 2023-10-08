// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, empty_constructor_bodies, must_be_immutable, prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_typing_uninitialized_variables, sized_box_for_whitespace, avoid_print, unused_element, unnecessary_string_escapes

// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:kaio/Literature/BookShape.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/data/literature.dart';
import 'package:kaio/main.dart';
// import 'package:shared_preferences/shared_preferences.dart';

List<BookShape> books = [];

class LiteraturePage extends StatefulWidget {
  LiteraturePage({super.key});
  @override
  State<LiteraturePage> createState() => _LiteraturePageState();
}

class _LiteraturePageState extends State<LiteraturePage> {
  // @override
  // void initState() {
  //   super.initState();
  //   getBooksFromSharedPreferences();
  // }
  // Future<void> loadBooksFromSharedPreferences() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final json = prefs.getString('books');
  //   if (json != null) {
  //     final List<dynamic> decodedJson = jsonDecode(json);
  //     final List<BookShape> loadedBooks =
  //         decodedJson.map((json) => BookShape.fromJson(json)).toList();

  //     setState(() {
  //       books = loadedBooks;
  //     });
  //   }
  // }

  // Future<void> saveBooksToSharedPreferences() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final encodedBooks = jsonEncode(books.map((book) => book.toJson()).toList());
  //   prefs.setString('books', encodedBooks);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text(
              'Kaio',
              style: kSubHeading,
            ),
            backgroundColor: Theme.of(context).primaryColor),
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
                padding: const EdgeInsets.all(20),
                child: Text('My Books', style: kHeading),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: books)),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0, left: 20.0),
                child: Text(
                  'Book Shelf',
                  style: kHeading,
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

  Widget Poetry() {
    return GridView.count(crossAxisCount: 2, children: poetry);
  }

  Widget History() {
    return GridView.count(crossAxisCount: 2, children: history);
  }

  Widget Prose() {
    return GridView.count(crossAxisCount: 2, children: prose);
  }

  Widget New() {
    return GridView.count(crossAxisCount: 2, children: newbook);
  }
}
