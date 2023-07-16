// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:kaio/literature.dart';
import 'package:kaio/widgets/bookshape.dart';

void main() {
  runApp(MaterialApp(
    home: LiteraturePage(),
  ));
}

var devH, devW;


// class Scroll extends StatelessWidget {
//   const Scroll({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GridView.count(crossAxisCount: 2,
//       mainAxisSpacing: 20,
//       children: [
//         BookShape(imagepath: 'assets/argami.jpg'),
//               BookShape(imagepath: 'assets/argami.jpg'),
//               BookShape(imagepath: 'assets/argami.jpg'),
//               BookShape(imagepath: 'assets/argami.jpg'),
//               BookShape(imagepath: 'assets/argami.jpg'),
//               BookShape(imagepath: 'assets/argami.jpg'),
//               BookShape(imagepath: 'assets/argami.jpg'),
//               BookShape(imagepath: 'assets/argami.jpg')
//       ],)
//     );
//   }
// }