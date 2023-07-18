// ignore_for_file: must_be_immutable, prefer_const_constructors, use_key_in_widget_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../literature.dart';


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

class BookShape extends StatelessWidget {
  String imagepath = '';
  var name;
  BookShape({required this.name,required this.imagepath, });

  @override
  Widget build(BuildContext context) {
    devH = MediaQuery.of(context).size.height;
    devW = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => name));
      },
      child: Container(
        height: devW * 0.35,
        width: devW * 0.3,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black, width: 3),
            image: DecorationImage(
                image: AssetImage(imagepath), fit: BoxFit.fill)),
      ),
    );
  }
}
