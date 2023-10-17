// ignore_for_file: must_be_immutable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../Destinations/destinationFeature.dart';

class Explore extends StatefulWidget {
  String listname;
  Explore({super.key, required this.listname});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('destination')
            .where('DestCategory', isEqualTo: widget.listname.toString())
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
                      heading: data['DestName'],
                      image: data['DestImage'].toString(),
                      description: data['DestDescription']));
            }).toList(),
          );
        });
  }

  String image = '', heading = '', description = '';
  // ignore: non_constant_identifier_names
  Widget Foreground({required image, required heading, required description}) {
    return 
        FeatureCard(
            heading: heading, description: description, imagePath: image);
  }
}
