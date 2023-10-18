// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/main.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LibraryCard extends StatefulWidget {
  String urlLink, LibraryName, LibraryAddress;
  LibraryCard(
      {super.key, required this.urlLink,
      required this.LibraryName,
      required this.LibraryAddress});

  @override
  State<LibraryCard> createState() => _LibraryCardState();
}

class _LibraryCardState extends State<LibraryCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      // shape: RoundedRectangleBorder(
      //   borderRadius:
      //       BorderRadius.circular(30), // Round the corners of the card
      // ),
      child: Container(
        decoration: BoxDecoration(
            gradient: RadialGradient(colors: [
          Colors.white,
          Theme.of(context).primaryColor,
        ], radius: 4, focalRadius: 4)),
        height: devH * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(devH * 0.01),
                  child: Text(
                    widget.LibraryName,
                    style: kSubHeading,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(devH * 0.008),
                  child: Text(
                    widget.LibraryAddress,
                    style: kNormalText,
                  ),
                ),
              ],
            ),
            IconButton(
                onPressed: () async {
                  var url = widget.urlLink;
                  if (!await canLaunchUrlString(url)) {
                    await launchUrlString(widget.urlLink);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                icon: Icon(Icons.directions))
          ],
        ),
      ),
    );
  }
}
