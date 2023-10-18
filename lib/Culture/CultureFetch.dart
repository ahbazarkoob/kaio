// ignore_for_file: must_be_immutable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../Destinations/destinationFeature.dart';


class CultureFetch extends StatefulWidget {
  String listname;
  CultureFetch({super.key, required this.listname});

  @override
  State<CultureFetch> createState() => _CultureFetchState();
}

class _CultureFetchState extends State<CultureFetch> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('culture')
            .where('CultureCategory', isEqualTo: widget.listname.toString())
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Text('Something went wrong');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text("Loading");
          }
          return ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data =
                  document.data()! as Map<String, dynamic>;
              return ListTile(
                  subtitle: Foreground(
                      heading: data['CultureName'],
                      image: data['CultureImage'].toString(),
                      description: data['CultureDescription']));
            }).toList(),
          );
        });
  }

  String image = '', heading = '', description = '';
  // ignore: non_constant_identifier_names
  Widget Foreground({required image, required heading, required description}) {
    return FeatureCard(
        heading: heading, description: description, imagePath: image);
  }
}
