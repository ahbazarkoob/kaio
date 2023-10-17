// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names, sized_box_for_whitespace, must_be_immutable, camel_case_types, use_key_in_widget_constructors, non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import '../main.dart';

class featureContainer extends StatefulWidget {
  String imagePath;
  var NextPage;

  featureContainer({required this.imagePath, required this.NextPage});

  @override
  State<featureContainer> createState() => _featureContainerState();
}

class _featureContainerState extends State<featureContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => widget.NextPage),
        );
      },
      child: Container(
        margin: EdgeInsets.all(devW * 0.03),
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        width: devW * 0.8,
        child: Image(
          fit: BoxFit.fill,
          image: AssetImage(widget.imagePath),
        ),
      ),
    );
  }
}
