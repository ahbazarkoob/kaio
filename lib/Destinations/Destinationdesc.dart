// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';
import '../constants.dart';
import '../main.dart';
import '../widgets/ReviewCard.dart';

class Description_Destination extends StatelessWidget {
  const Description_Destination({super.key});

  @override
  Widget build(BuildContext context) {
    devH = MediaQuery.of(context).size.height;
    devW = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {Navigator.pop(context);},
          icon: Icon(Icons.arrow_back_sharp),
          color: Color(0xff85586F),
        ),
        title: Text('GULMARG', style: kHeading),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Positioned(
              top: devH * 0.41,
              left: devW * 0.05,
              child: SizedBox(
                  width: devW * 0.9,
                  height: devH * 0.45,
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: DefaultTabController(
                      length: 2,
                      child: Column(
                        children: [
                          TabBar(
                            tabs: [
                              Tab(text: 'Overview'),
                              Tab(text: 'Reviews'),
                            ],
                            labelColor: Color(0xff85586F),
                          ),
                          Expanded(
                            child: TabBarView(
                              children: [
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SingleChildScrollView(
                                        child: Text(
                                      'Gulmarg is a town nestled in the Pir Panjal range of the Western Himalayas at an altitude of 8,690 feet above sea level. Literally translated as ‘Meadow of Flowers’ it is encased by glimmering snow peaked alps, verdant green pastures, colorful meadows, deep valleys and pine covered slopes.A picturesque beauty, it is known for its ski resort which was established in 1927, the Gulmarg Gondola – Asia’s second longest cable car ride and the highest golf course in the world at an elevated altitude of 2,650 meters. Gulmarg is an absolute delight for nature lovers and adventure seekers. Called the ‘heartland of winter sports’, it offers a plethora of activities such as skiing, snowboarding, horse riding, heli-skiing, snow scooter, tobogganing, etc. and sightseeing options. The best season to visit Gulmarg is from October to June as it is the perfect destination especially during winters when the snow capped landscape transforms into the premier destination for winter sports in India.',
                                    )),
                                  ),
                                ),
                                Center(
                                  child: SingleChildScrollView(
                                      child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(children: [
                                      ReviewCard(
                                        CardText: 'Amazing place...',
                                      ),
                                      SizedBox(height: 10),
                                      ReviewCard(
                                        CardText: 'More beautiful in winters',
                                      ),
                                      SizedBox(height: 10),
                                      ReviewCard(
                                        CardText: 'Loved it....',
                                      ),
                                      SizedBox(height: 10),
                                      ReviewCard(
                                        CardText:
                                            'Beutiful place to visit with family and friends.',
                                      ),
                                      SizedBox(height: 10),
                                    ]),
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))),
          Positioned(
            top: 0,
            left: devW * 0.05,
            child: SizedBox(
              width: devW * 0.9,
              height: devH * 0.43,
              child: Card(
                elevation: 12,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child:
                 Image.asset('assets/travel.jpeg',fit: BoxFit.contain)
              ),
            ),
          ),
        ],
      ),
    );
  }
}