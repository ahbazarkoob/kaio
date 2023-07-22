
// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';

import '../main.dart';

class GalleryImage extends StatelessWidget {
  const GalleryImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.grey.shade400,
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);},
              icon: Icon(Icons.arrow_back_sharp),
              color: Color(0xff85586F),
          ),
          title: const Text('GALLERY', style: kHeading),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: [
            Container(
        height: devW * 0.8,
        width: devW * 0.9,
        margin: EdgeInsets.all(devW * 0.01),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black, width: 3),
            image: DecorationImage(
                image: AssetImage('assets/story1.jpg'), fit: BoxFit.fitWidth)
            ),
      ),
      SizedBox(
        height: devH*0.05,
      ),
            Text('DESCRIPTION',style: kHeading,),
            SizedBox(
        height: devH*0.05,
      ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('In 1950 James Cobb Burke - a writer, war correspondent and photojournalist was assigned to India as a part-time correspondent for Time-Life and became their full-time Bureau Chief in New Delhi in 1951. He visited Kashmir in 1964 and captured its beauty and life in some amazing pictures. Tragically, the same year James Burke slipped and fell to his death 60 miles north of Tezpur, Assam while trying to take a picture in the Himalayas. He was 49 years old and left behind a wife and three children.'),
            )
          ],
        ),
    );
  }
}
