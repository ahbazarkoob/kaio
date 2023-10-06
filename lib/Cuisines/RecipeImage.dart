

// ignore_for_file: prefer_const_constructors, file_names, must_be_immutable, prefer_typing_uninitialized_variables, use_key_in_widget_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:kaio/main.dart';

class RecipeImage extends StatefulWidget {
  var name;
  String assetName;
  RecipeImage({required this.name, required this.assetName, required String recipeName});
  @override
  State<RecipeImage> createState() => _RecipeImageState();
}

class _RecipeImageState extends State<RecipeImage> {
  @override
  Widget build(BuildContext context) {
return GestureDetector( onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => widget.name));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            height: devH * 0.3,
            width: devW * 0.9,
            decoration: BoxDecoration(border: Border.all(color: Theme.of(context).primaryColor,width: 2),borderRadius: BorderRadius.circular(15.0)),
            child: ClipRRect(borderRadius: BorderRadius.circular(15.0),
              child: Image(fit: BoxFit.fill, image: AssetImage(widget.assetName),
              ),
            )),
      ),);

  }
}
   