// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:kaio/Literature/BookTemplate.dart';

class Recent extends StatefulWidget {
  const Recent({super.key});

  @override
  State<Recent> createState() => _RecentState();
}

class _RecentState extends State<Recent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: recents,
      ),
    ));
  }
}
