// ignore_for_file: prefer_const_constructors, camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';

class Description_papermachie extends StatelessWidget {
  const Description_papermachie({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
          leading: IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_back_sharp),color: Color(0xff85586F),
            
          ),
          title: Text('Back',style: kHeading,),
          
          backgroundColor: Colors.transparent,
          elevation: 0,
        
      ),
      body: SafeArea(child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dignissim pretium dolor, in blandit sapien pellentesque vel. Praesent vulputate eget justo quis condimentum. Cras ut sollicitudin purus, non varius elit. Ut ac porta justo. Etiam laoreet, odio vitae porta venenatis, libero nulla vestibulum est, nec lobortis leo leo eu neque. Maecenas in imperdiet nunc, vel vulputate lectus. Sed felis nulla, tincidunt sit amet semper at, viverra at orci. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas malesuada nunc quis enim pretium auctor. ')),
    );
  }
}