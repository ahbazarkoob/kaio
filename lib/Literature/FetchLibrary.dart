import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kaio/Literature/carouselCard.dart';

class FetchLibrary extends StatefulWidget {
  const FetchLibrary({super.key});

  @override
  State<FetchLibrary> createState() => _FetchLibraryState();
}

class _FetchLibraryState extends State<FetchLibrary> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('addlibrary')
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading");
          }
          return ListView(
                children: snapshot.data!.docs.map((DocumentSnapshot document) {
                  Map<String, dynamic> data =
                      document.data()! as Map<String, dynamic>;
                     
                      //  final String userId = FirebaseAuth.instance.currentUser.uid;
                  return LibraryCard(urlLink: data['LibraryLocation'], LibraryName: data['LibraryName'], LibraryAddress: data['LibraryAddress']);
                }).toList(),
              );
            });
  }
}