// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';

class SelectionButton extends StatelessWidget {
  String buttonText;
  VoidCallback function;
  SelectionButton({required this.function, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: function,
        child: Text(
          buttonText,
          style: kSelText,
        ));
  }
}
