// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/Destinations/Destinationdesc.dart';
import '../main.dart';

class Travel extends StatelessWidget {
  Travel({super.key});

  @override
  Widget build(BuildContext context) {
    devH = MediaQuery.of(context).size.height;
    devW = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Description_Destination()));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        height: devH * 0.50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(
              image: AssetImage('assets/travel.jpeg'), fit: BoxFit.fill),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Destination',
              style: kHeading,
            ),
            Row(
              children: [
                Icon(
                  Icons.pin_drop_outlined,
                  color: Colors.white,
                ),
                Text(
                  'Location',
                  style: kHeading,
                ),
                SizedBox(
                  width: devW * 0.40,
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next,size: 40,weight: 3,))
              ],
            ),
            SizedBox(
              height: devH * 0.03,
            ),
          ],
        ),
      ),
    );
  }
}

// class Travel extends StatelessWidget {
  
// var name;
//   Travel({required this.name});
//   @override
//   Widget build(BuildContext context) {
//     devH = MediaQuery.of(context).size.height;
//     return GestureDetector(
//           onTap: () {
//            Navigator.push((context), MaterialPageRoute(builder: (context) => name));
      
//           },
//           child: Container(
//             height: devH * 0.4,
//             margin: EdgeInsets.all(10),
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(25), color: Colors.purple),
//           ),
//         );
//   }
// }
