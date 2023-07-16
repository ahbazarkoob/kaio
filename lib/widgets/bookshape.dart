// ignore_for_file: must_be_immutable, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../main.dart';

// class BookShape extends StatelessWidget {
//   String imagepath = '';
//   BookShape({required this.imagepath});

//   @override
//   Widget build(BuildContext context) {
//     devH = MediaQuery.of(context).size.height;
//     devW = MediaQuery.of(context).size.width;
//     return  SizedBox(
//       height: devH * 0.24,
//       width: devW * 0.40,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             width: devW * 0.025,
//             height: devH * 0.26,
//             transform: Matrix4.skewY(-0.5),
//             decoration: BoxDecoration(
//                 color: Colors.black,
//                 border: Border.all(
//                   color: Color.fromRGBO(0, 0, 0, 1),
//                   width: 2,
//                 )),
//           ),
//           Container(
//             width: devW * 0.35,
//             height: devH * 0.24,
//             transform: Matrix4.skewY(0),
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage(imagepath),
//                   fit: BoxFit.fill),
//                 border: Border.all(
//                   color: Color.fromRGBO(0, 0, 0, 1),
//                   width: 2,
//                 )),
//           ),
//         ],
//       ),
//     );
//   }
// }

class BookShape extends StatefulWidget {
  VoidCallback function;
  String imagepath = '';
  BookShape({required this.function, required this.imagepath});

  @override
  State<BookShape> createState() => _BookShapeState();
}

class _BookShapeState extends State<BookShape> {
  @override
  Widget build(BuildContext context) {
    devH = MediaQuery.of(context).size.height;
    devW = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        widget.function;
      },
      child: Container(
        height: devW*0.30,
        width: devW*0.25,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
          image: DecorationImage(
            image:AssetImage(widget.imagepath),
            fit: BoxFit.fill)
        ),
       
      ),
    );
  }
}
