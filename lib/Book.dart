// ignore_for_file: prefer_const_constructors, file_names, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/widgets/ReviewCard.dart';


import 'main.dart';
import 'widgets/BookShape.dart';

class Book extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     devH = MediaQuery.of(context).size.height;
    devW = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_sharp,
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
                    Text('KHEWAT',style: kHeading,),
                    Text('RAHMAN RAHI',style:  kSelText,),
                    SizedBox(
                      height: devH * 0.01,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(width: devW*0.3,),
                        IconButton(
                          onPressed: () {
                          },
                          icon: Icon(Icons.arrow_drop_down_circle_outlined),
                          iconSize: 30,
                        ),
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
                  Text('Description',style: kHeading,),
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
                Column(
                  children: [
                    Text('GENRE'),
                    Icon(Icons.book_rounded),
                    Text('POETRY')
                  ],
                ),
                Column(
                  children: [
                    Text('LENGTH'),
                    Icon(Icons.four_k_outlined),
                    Text('PAGES')
                  ],
                ),
                Column(
                  children: [
                    Text('LANG'),
                    Icon(Icons.language),
                    Text('KASHMIRI')
                  ],
                ),
              ],
            ),
            SizedBox(height: devH * 0.02),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Reviews',style: kHeading,),
                
                Container(
                  height: devH * 0.27,
                  width: devW,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: SingleChildScrollView(
                        child: Column(children: [
                      ReviewCard(CardText: 'My friend recommended this book to me, talking about how I would love it and it was true, I did.',),
                      SizedBox(height: 10),
                     ReviewCard(CardText: 'This book i must say .. this is one of the amazing book i have ever read..',),
                      SizedBox(height: 10),
                      ReviewCard(CardText: 'One of the finest pieces of writings in the market.',),
                      SizedBox(height: 10),
                      ReviewCard(CardText: 'Amazing piece of work..',),
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
}
