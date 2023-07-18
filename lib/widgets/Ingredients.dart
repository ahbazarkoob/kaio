// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';


class Ingredients extends StatelessWidget {
  const Ingredients({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(8.0),
                            child: OutlinedButton(onPressed: (){},
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text('lllsdfghjklasdfghjasdfghjkl'),
                              ),
                            ));                        
  }
}