// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/main.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LibraryCard extends StatefulWidget {
  String urlLink,LibraryName, LibraryAddress;
  LibraryCard({required this.urlLink, required this.LibraryName, required this.LibraryAddress});

  @override
  State<LibraryCard> createState() => _LibraryCardState();
}

class _LibraryCardState extends State<LibraryCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: devW*0.6,
      child: Card(
        margin: EdgeInsets.all(devH*0.01),
        elevation: 5,
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.LibraryName,style: kSubHeading,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.LibraryAddress,style: kNormalText,),
              ),
             ],
            ),
            IconButton(onPressed: ()async {
            var url = widget.urlLink;
            if (!await canLaunchUrlString(url)) {
              await launchUrlString(widget.urlLink);
            } else {
              throw 'Could not launch $url';
            }
                    }, icon: Icon(Icons.directions))
          ],
        ),
      ),
    );
  }
}