// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:kaio/widgets/CultureCard.dart';

class CultureSelection extends StatelessWidget {
  const CultureSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(25.0)
                ),
                child:  TabBar(
                  indicator: BoxDecoration(
                    color: Color(0xff85586F),
                    borderRadius:  BorderRadius.circular(25.0)
                  ) ,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  tabs: const  [
                    Tab(text: 'Gallery',),
                    Tab(text: 'Blogs',),
                    Tab(text: 'Kashmir Life',),
                  ],
                ),
              ),
              Expanded(
                  child: TabBarView(
                    children:  [
                      Gallery(),
                      Blogs(),
                      KLife()
                    ],
                  )
              )
            ],
          ),
        )
      ));
  }
}


// Column(
//             children: [
//               Container(
//                 height: 45,
//                 decoration: BoxDecoration(
//                   color: Colors.grey[300],
//                   borderRadius: BorderRadius.circular(25.0)
//                 ),
//                 child:  TabBar(
//                   indicator: BoxDecoration(
//                     color: Color(0xff85586F),
//                     borderRadius:  BorderRadius.circular(25.0)
//                   ) ,
//                   labelColor: Colors.white,
//                   unselectedLabelColor: Colors.black,
//                   tabs: const  [
//                     Tab(text: 'Poetry',),
//                     Tab(text: 'History',),
//                     Tab(text: 'Famous Writers',),
//                     Tab(text: 'Religion',),
//                     Tab(text: 'Folk',),
//                   ],
//                 ),
//               ),
//               const Expanded(
//                   child: TabBarView(
//                     children:  [
//                       Poetry(),
//                       History(),
//                       FamousWriters(),
//                       Religion(),
//                       History()
//                     ],
//                   )
//               )