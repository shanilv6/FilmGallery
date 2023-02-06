import 'package:flutter/material.dart';

class PremiumContainer extends StatelessWidget {
  final Size size;
  final String category;
  final String price;
  final String monthText;
  final String featuresText;
  final Color containerBorderColor;
  final String buttonName;
  final Color buttonColor;
  final Color buttonNameColor;
  final double width;

  const PremiumContainer({
    Key? key,
    required this.size,
    required this.category,
    required this.price,
    required this.monthText,
    required this.featuresText,
    required this.containerBorderColor,
    required this.buttonName,
    required this.buttonColor,
    required this.buttonNameColor,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.width * 0.45,
      width: size.width * 0.42,
      decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: containerBorderColor, width: 2)),
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          children: [
            Text(
              category,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(
              height: size.width * 0.03,
            ),
            Text(
              price,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            Text(
              monthText,
              style: const TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: size.width * 0.03,
            ),
            Text(
              featuresText,
              style:
                  const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.width * 0.03,
            ),
            Container(
              height: size.width * 0.10,
             width: width,
             // width: size.width * 0.30,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.circular(8),
                color: buttonColor,
              ),
              child: Center(
                  child: Text(
                buttonName,
                style: TextStyle(color: buttonNameColor),
              )),
            )
          ],
        ),
      ),
    );
  }
}
