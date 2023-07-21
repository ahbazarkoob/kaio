// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/widgets/ReviewCard.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../main.dart';
import '../widgets/bookshape.dart';
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
                BookShape(name: Book(), imagepath: 'assets/rahman.jpg'),
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
                      style: kSelText,
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
                          onSelected: (String value) {
                            if (value == 'Read') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Read(),
                                ),
                              );
                            } else if (value == 'Download') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Download(),
                                ),
                              );
                            }
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
            SizedBox(height: devH * 0.02),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Reviews',
                  style: kHeading,
                ),
                Container(
                  height: devH * 0.27,
                  width: devW,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: SingleChildScrollView(
                        child: Column(children: [
                      ReviewCard(
                        CardText:
                            'My friend recommended this book to me, talking about how I would love it and it was true, I did.',
                      ),
                      SizedBox(height: 10),
                      ReviewCard(
                        CardText:
                            'This book i must say .. this is one of the amazing book i have ever read..',
                      ),
                      SizedBox(height: 10),
                      ReviewCard(
                        CardText:
                            'One of the finest pieces of writings in the market.',
                      ),
                      SizedBox(height: 10),
                      ReviewCard(
                        CardText: 'Amazing piece of work..',
                      ),
                      SizedBox(height: 10),
                    ])),
                  ),
                ),
              ],
            )
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

//  read and download  book

class Read extends StatelessWidget {
  const Read({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: GestureDetector(
      onTap: () async {
       //var url ='https://drive.google.com/drive/u/3/folders/1K8kVk1YNyN3fSftQAk6ydou9LvIWmI2R';
         var url = 'https://mega.nz/fm/FvEUkLAQ';
        if (await canLaunchUrlString(url)) {
          await launchUrlString(url);
        } else {
          throw 'Could not launch $url';
      }
      },
      child: Center(
        child: Text(
          "Want Read Article Tap Here",
          style: TextStyle(
              color: Colors.green, fontSize: 25, fontWeight: FontWeight.w400),
        ),
      ),
    )));
  }
}

//  GestureDetector(
//             onTap: () async {
//               const url = 'https://www.geeksforgeeks.org/';
//               if (await canLaunch(url)) {
//                 await launch(url, forceWebView: true, enableJavaScript: true);
//               } else {
//                 throw 'Could not launch $url';
//               }
//             },
//             child: Center(
//               child: Text(
//                 "Want Read Article Tap Here",
//                 style: TextStyle(
//                     color: Colors.green,
//                     fontSize: 25,
//                     fontWeight: FontWeight.w400),
//               ),

class Download extends StatelessWidget {
  const Download({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text('DOWNLOAD BOOK'),
    ));
  }
}

class Reload extends StatelessWidget {
  const Reload({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text('Failed'),
    ));
  }
}

