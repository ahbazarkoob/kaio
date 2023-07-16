// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';

class SelectionButton extends StatefulWidget {
  String buttonText;
  VoidCallback function;
  SelectionButton({required this.function, required this.buttonText});

  @override
  State<SelectionButton> createState() => _SelectionButtonState();
}

class _SelectionButtonState extends State<SelectionButton> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () {
          widget.function;
        },
        child: Text(widget.buttonText, style:kSelText,));
  }
}
