// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:kaio/main.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CraftCard extends StatelessWidget {
  String imagePath, urlLink;
  CraftCard({required this.imagePath,required this.urlLink});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () async {
          var url = urlLink;
          if (!await canLaunchUrlString(url)) {
            await launchUrlString(url);
          } else {
            throw 'Could not launch $url';
          }
                  },
        child: Card(
          child: Container(
              height: devH * 0.3,
              width: devW * 0.9,
              decoration:
                  BoxDecoration(border: Border.all(color: Theme.of(context).primaryColor,)),
              child: Image(fit: BoxFit.fill, image: NetworkImage(imagePath))),
        ),
      ),
    );
  }
}



