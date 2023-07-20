// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:kaio/Culture/Gallery.dart';

import 'package:kaio/main.dart';

class CultureCard extends StatelessWidget {
  String imagepath;
  CultureCard({required this.imagepath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) =>GalleryImage()));
      },
      child: Container(
        height: devW * 0.5,
        width: devW * 0.5,
        margin: EdgeInsets.all(devW * 0.01),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black, width: 3),
            image: DecorationImage(
                image: AssetImage(imagepath), fit: BoxFit.fitWidth)),
      ),
    );
    // return Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: Container(
    //     margin: EdgeInsets.all(devH*0.001),
    //     width: devW*0.4,
    //     height: devH*0.4,
    //     decoration: BoxDecoration(
    //       border: Border.all(color: Colors.black),
    //       color: Colors.grey,
    //       borderRadius: BorderRadius.circular(devH * 0.05),
    //     ),
    //     ),

    // );
  }
}

class Gallery extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    devH = MediaQuery.of(context).size.height;
    devW = MediaQuery.of(context).size.width;

    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: devW * 0.03,
      childAspectRatio: 0.8,
      children: [
        CultureCard(imagepath: 'assets/argami.jpg'),
        CultureCard(imagepath: 'assets/argami.jpg'),
        CultureCard(imagepath: 'assets/argami.jpg'),
        CultureCard(imagepath: 'assets/argami.jpg'),
        CultureCard(imagepath: 'assets/argami.jpg'),
        CultureCard(imagepath: 'assets/argami.jpg'),
        CultureCard(imagepath: 'assets/argami.jpg'),
        CultureCard(imagepath: 'assets/argami.jpg'),
        CultureCard(imagepath: 'assets/argami.jpg'),
        CultureCard(imagepath: 'assets/argami.jpg'),
      ],
    );
  }
}


class KLife extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    devH = MediaQuery.of(context).size.height;
    devW = MediaQuery.of(context).size.width;

    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: devW * 0.03,
      childAspectRatio: 0.8,
      children: [
        CultureCard(imagepath: 'assets/papermachie.jpeg'),
        CultureCard(imagepath: 'assets/papermachie.jpeg'),
        CultureCard(imagepath: 'assets/papermachie.jpeg'),
        CultureCard(imagepath: 'assets/papermachie.jpeg'),
        CultureCard(imagepath: 'assets/papermachie.jpeg'),
        CultureCard(imagepath: 'assets/papermachie.jpeg'),
        CultureCard(imagepath: 'assets/papermachie.jpeg'),
        CultureCard(imagepath: 'assets/papermachie.jpeg'),
        CultureCard(imagepath: 'assets/papermachie.jpeg'),
        CultureCard(imagepath: 'assets/papermachie.jpeg'),
        CultureCard(imagepath: 'assets/papermachie.jpeg'),
      ],
    );
  }
}



class Blogs extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    devH = MediaQuery.of(context).size.height;
    devW = MediaQuery.of(context).size.width;

    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: devW * 0.03,
      childAspectRatio: 0.8,
      children: [
        CultureCard(imagepath: 'assets/travel.jpeg'),
        CultureCard(imagepath: 'assets/travel.jpeg'),
        CultureCard(imagepath: 'assets/travel.jpeg'),
        CultureCard(imagepath: 'assets/travel.jpeg'),
        CultureCard(imagepath: 'assets/travel.jpeg'),
        CultureCard(imagepath: 'assets/travel.jpeg'),
        CultureCard(imagepath: 'assets/travel.jpeg'),
        CultureCard(imagepath: 'assets/travel.jpeg'),
        CultureCard(imagepath: 'assets/travel.jpeg'),
        CultureCard(imagepath: 'assets/travel.jpeg'),
        CultureCard(imagepath: 'assets/travel.jpeg'),

      ],
    );
  }
}
