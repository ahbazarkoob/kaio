// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, unnecessary_string_interpolations, unused_local_variable, empty_statements, file_names, unused_import

import 'package:flutter/material.dart';
import 'package:kaio/Literature/BookShape.dart';
import 'package:kaio/constants.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../main.dart';
import 'package:url_launcher/url_launcher.dart';

class Book extends StatelessWidget {
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
        child: Column(
          children: [
            Row(
              children: [
                BookShape(name: Book(), imagepath: 'assets/images/Literature/Prose/rahman.jpg'),
                SizedBox(
                  width: devW * 0.04,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'KHEWAT',
                      style: kHeading,
                    ),
                    Text(
                      'RAHMAN RAHI',
                      style: kSubHeading,
                    ),
                    SizedBox(
                      height: devH * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        PopupMenuButton(
                          color: Color(0xff85586F),
                          icon: Icon(
                            Icons.arrow_drop_down_circle_outlined,
                            color: Colors.black,
                          ),
                          iconSize: 30,
                          onSelected: (String value) async {
                            if (value == 'Read') {
                              var url =
                                  'https://drive.google.com/file/d/1EaESB3vjDe6vHT5k9aw5WBvFn0nHRuce/view?usp=sharing';
                              if (!await canLaunchUrlString(url)) {
                                await launchUrlString(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            } 
                            ;
                          },
                          itemBuilder: (BuildContext context) => [
                            PopupMenuItem(
                              value: 'Read',
                              child: Text('Read'),
                            ),
                            PopupMenuItem(
                              value: 'Download',
                              child: Text('Download'),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
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
                  Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
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
      ),
    );
  }

  btn(String text1, String text2, IconData icon) {
    return Column(
      children: [Text(text1), Icon(icon), Text(text2)],
    );
  }
}
