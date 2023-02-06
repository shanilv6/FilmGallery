import 'package:flutter/material.dart';

class CastContainer extends StatelessWidget {
  final String Castimage;
  const CastContainer({
    Key? key, required this.Castimage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundImage:NetworkImage(Castimage) ,
        radius: 40,

    ));
  }
}
