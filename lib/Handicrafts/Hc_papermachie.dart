// ignore_for_file: prefer_const_constructors, camel_case_types, file_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kaio/Handicrafts/desc_Hc_pprmche.dart';
import '../../constants.dart';
import '../../main.dart';

class Paper_machie extends StatelessWidget {
  const Paper_machie({super.key});

  @override
  Widget build(BuildContext context) {
    devH = MediaQuery.of(context).size.height;
    devW = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.grey.shade400,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_sharp),
            color: Color(0xff85586F),
          ),
          title: Text('PAPER MACHIE', style: kHeading),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Center(
            child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/papermachie.jpeg'),
                        radius: devW * 0.3,
                      ),
                      Text(
                        'PAPER MACHIE',
                        style: kHeading,
                      ),
                      Text(
                        'Highly stylized combination of craft and fine art.',
                        style: kSelText,
                      ),
                      SizedBox(
                        height: devH * 0.04,
                      ),
                      Text(
                        'Recommended for you',
                        style: kHeading,
                      ),
                      SizedBox(
                        height: devH * 0.04,
                      ),
                      CarouselSlider(
                        items: [
                          Container(
                            color: Colors.blue,),
                          Container(color: Colors.pink,),
                          Container(color: Colors.yellow,),],options: CarouselOptions(
                            height: devH*0.25,
                            enlargeCenterPage: true,
                            enlargeFactor: 0.5,
                            aspectRatio: 16 / 9,
                            enableInfiniteScroll: true,
                            viewportFraction: 0.5,),),
                      SizedBox(
                        height: devH * 0.04,
                      ),
                      SizedBox(
                        height: devH * 0.07,
                        width: devW,
                        child: FilledButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              return Description_papermachie();
                            }));
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color(0xff85586F)), 
                          ),
                          child: Text(
                            "Know more about Paper Machie",
                          ),
                        ),
                      )
                    ]))));
  }
}
