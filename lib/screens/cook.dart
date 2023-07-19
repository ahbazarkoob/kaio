// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:kaio/widgets/CookCard.dart';
import '../../constants.dart';
import '../main.dart';




class Cook extends StatelessWidget {
  const Cook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
          leading: IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_back_sharp),color: Color(0xff85586F),
            
          ),
          title: Text('KEHWA RECIPE', style: kHeading),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        
      ),
        body: 

        // ----------------using col and singlechildscrollview
        // Container(
                  
        //           height: devH ,
        //           width: devW,
        //           child: Padding(
        //             padding: const EdgeInsets.symmetric(vertical: 8.0),
        //             child: SingleChildScrollView(
        //                 child: Column(children: [
        //               CookCard(CardText: 'STEP 1- To make kashmiri kahwa, combine the saffron strands and i tbsp of warm water in a small bowl, mix well and keep aside.',),
        //               SizedBox(height: 10),
        //              CookCard(CardText: 'STEP 2- Boil 2 cups of water in a pan, add the cinnamon, cardamom, and sugar, mix well and cook on a medium flame for approx. 3-4 mins. ',),
        //               SizedBox(height: 10),
        //               CookCard(CardText: 'STEP 3- Lower the flame, add the kashmiri green tea leaves, mix well and cook for 2-3 mins, while stirring ocassionally.',),
        //               SizedBox(height: 10),
        //               CookCard(CardText: 'STEP 4- Strain the tea in a deep bowl using a strainer.',),
        //               SizedBox(height: 10),
        //               CookCard(CardText: 'STEP 5- Transfer the mixture into a pan,add the saffron-water mixture and almonds, mix well and cook on a slow flame for 1 min, while stirring continuously.',),
        //               SizedBox(height: 10),
        //               CookCard(CardText: 'STEP 6- Serve the kashmiri kahwa immediately.',),
                      
        //             ])),
        //           ),
        //         ),



// using listviewbuilder

        Container(
  height: devH,
  width: devW,
  child: Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        List cardTexts = [
          'STEP 1- To make kashmiri kahwa, combine the saffron strands and i tbsp of warm water in a small bowl, mix well and keep aside.',
          'STEP 2- Boil 2 cups of water in a pan, add the cinnamon, cardamom, and sugar, mix well and cook on a medium flame for approx. 3-4 mins.',
          'STEP 3- Lower the flame, add the kashmiri green tea leaves, mix well and cook for 2-3 mins, while stirring occasionally.',
          'STEP 4- Strain the tea in a deep bowl using a strainer.',
          'STEP 5- Transfer the mixture into a pan, add the saffron-water mixture and almonds, mix well and cook on a slow flame for 1 min, while stirring continuously.',
          'STEP 6- Serve the kashmiri kahwa immediately.',
        ];

        return Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: CookCard(CardText: cardTexts[index]),
        );
      },
    ),
  ),
)

    );
  }
}