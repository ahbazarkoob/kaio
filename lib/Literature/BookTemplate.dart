// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, file_names

import 'package:flutter/material.dart';
import 'package:kaio/Literature/Widget_Book.dart';
import 'package:kaio/constants.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../../main.dart';

btn(String text1, String text2, IconData icon) {
  return Column(
    children: [Text(text1), Icon(icon), Text(text2)],
  );
}

class BookTemplate extends StatelessWidget {
  String finalPath = '', //imagepath
      bookName = '',
      author = '',
      link = '',
      descriptionText = ''; 
  BookTemplate(
      {required this.finalPath,
      required this.bookName,
      required this.author,
      required this.link,
      required this.descriptionText});

  @override
  Widget build(BuildContext context) {
    devH = MediaQuery.of(context).size.height;
    devW = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.grey.shade400,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_sharp),
            color: Colors.black,
          ),
          title: Text(
            'Back',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(children: [
            BookShape2(imagepath: finalPath),  //BookShape without Navigator
            SizedBox(
              width: devW * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Center(
                      child: Text(
                        bookName, 
                        style: kHeading, textScaleFactor: devW * 0.0013,
                      ),
                    ),
                     Center(
                       child: Text(
                          author,
                          style: kSelText, textScaleFactor: devW * 0.003,
                      ),
                     )
                  ],
                ),
                IconButton(
                  onPressed: () async {
                    var url = link;
                    if (!await canLaunchUrlString(url)) {
                      await launchUrlString(url);
                    }
                  },
                  icon: Icon(
                    Icons.arrow_drop_down_circle_outlined,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: devH * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                btn('GENRE', 'POETRY', Icons.book_rounded),
                btn('LENGTH', 'PAGES', Icons.four_k_outlined),
                btn('LANG', 'KASHMIRI', Icons.language),
              ],
            ),
            SizedBox(height: devH * 0.01),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: kHeading,
                  ),
                  SizedBox(
                    height: devH * 0.01,
                  ),
                  Text(descriptionText
                      )
                ],
              ),
            ),
          ]),
        ));
  }
}
