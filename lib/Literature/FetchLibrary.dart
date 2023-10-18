// ignore_for_file: file_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kaio/main.dart';
import 'carouselCard.dart';

List<ListTile> listname = [];

class FetchLibrary extends StatefulWidget {
  const FetchLibrary({super.key});

  @override
  State<FetchLibrary> createState() => _FetchLibraryState();
}

class _FetchLibraryState extends State<FetchLibrary> {
  getDataFromFirestore() async {
    List<Map<String, dynamic>> dataList = [];
    try {
      QuerySnapshot querySnapshot =
          await FirebaseFirestore.instance.collection('addlibrary').get();

      for (QueryDocumentSnapshot doc in querySnapshot.docs) {
        // Convert the document data to a Map
        Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
        dataList.add(data);
      }
      for (var card in dataList) {
        ListTile tile = ListTile(
            subtitle: LibraryCard(
                urlLink: card['LibraryLocation'],
                LibraryName: card['LibraryName'],
                LibraryAddress: card['LibraryAddress']));
        setState(() {
        listname.add(tile);
        });
      }
      // print(listname);
      return dataList;
    } catch (e) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    getDataFromFirestore();
    return CarouselSlider(
      items: listname,
      options: CarouselOptions(
        height: devH*0.1,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 2),
          scrollDirection: Axis.horizontal),
    );
  }
}
