import 'package:flutter/material.dart';

class LoginSignupbContainers extends StatelessWidget {
  final String Buttonname;
  const LoginSignupbContainers({
    Key? key, required this.Buttonname,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 360,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.blue),
      child: Center(
        child: Text(
          Buttonname,
          style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
    );
  }
}
