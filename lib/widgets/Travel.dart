// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kaio/literature.dart';

import '../main.dart';

class Travel extends StatelessWidget {
  const Travel({super.key});

  @override
  Widget build(BuildContext context) {
    devH = MediaQuery.of(context).size.height;
    return GestureDetector(
          onTap: () {
          
          },
          child: Container(
            height: devH * 0.4,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25), color: Colors.purple),
          ),
        );
  }
}
