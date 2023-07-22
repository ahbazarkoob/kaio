// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:kaio/Culture/CultureSelection.dart';

class Culture extends StatelessWidget {
  const Culture({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: CultureSelection(),)
    );
  }
}


// Gallery(){}
// Blogs(){}
// KLife(){}