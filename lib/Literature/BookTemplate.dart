// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../../main.dart';
import '../../widgets/bookshape.dart';
import '../Cuisines/cook.dart';

btn(String text1, String text2, IconData icon) {
  return Column(
    children: [Text(text1), Icon(icon), Text(text2)],
  );
}

class BookTemplate extends StatelessWidget {
  String finalPath = '',
      bookName = '',
      author = '',
      link = '',
      descriptionText = ''; //imagepath
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
            Row(children: [
              BookShape(name: Cook(), imagepath: finalPath),
              SizedBox(
                width: devW * 0.04,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bookName,
                    style: kHeading,
                  ),
                  Text(
                    author,
                    style: kSelText,
                  ),
                  SizedBox(
                    height: devH * 0.01,
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
                            // Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
                            )
                      ],
                    ),
                  ),
                  SizedBox(height: devH * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      btn('GENRE', 'POETRY', Icons.book_rounded),
                      btn('LENGTH', 'PAGES', Icons.four_k_outlined),
                      btn('LANG', 'KASHMIRI', Icons.language),
                    ],
                  ),
                ],
              ),
            ])
          ]),
        ));
  }
}
