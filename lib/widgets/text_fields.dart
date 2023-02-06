import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  final String hintText;
  final keyFormvalue;
  final validators;
  final textType;
  final controllers;
  const TextFields({
    Key? key,
    required this.hintText,
    required this.keyFormvalue,
    required this.validators,
    required this.textType,
    required this.controllers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Form(
          key: keyFormvalue,
          child: TextFormField(
            keyboardType: textType,
            validator: validators,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                fillColor: Colors.grey.shade900,
                filled: true,
                hintText: hintText,
                hintStyle: const TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
