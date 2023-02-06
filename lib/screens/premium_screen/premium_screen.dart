import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/premium_container.dart';

class PremiumScreen extends StatefulWidget {
  PremiumScreen({Key? key}) : super(key: key);

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  bool freeContainerSelection = false;

  bool basicContainerSelection = false;

  bool standardContainerSelection = false;

  bool premiumContainerSelection = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back_ios)),
        title: const Text(
          "Choose your Plan",
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Container(
              height: size.width * 0.20,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent,width: 1),
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    "Upgrade your \nplan anytime! ",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  Container(
                    height: size.width * 0.10,
                    width: size.width * 0.30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    child: const Center(
                        child: Text(
                      "Upgrade",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.width * 0.10,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Free Container
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          freeContainerSelection = true;
                          basicContainerSelection = false;
                          standardContainerSelection = false;
                          premiumContainerSelection = false;
                        });
                      },
                      child: PremiumContainer(
                        size: size,
                        category: 'Free',
                        price: "₹0.0",
                        monthText: '/per month',
                        featuresText: 'Basic Features',
                        containerBorderColor: (freeContainerSelection == false)
                            ? Colors.grey.shade800
                            : Colors.blue,
                        buttonName: (freeContainerSelection == false)
                            ? "Choose Plan"
                            : "Selected",
                        buttonNameColor: (freeContainerSelection == false)
                            ? Colors.blue
                            : Colors.white,
                        buttonColor: freeContainerSelection == false
                            ? Colors.transparent
                            : Colors.blue,
                        width: (freeContainerSelection == false)
                            ? size.width * 0.30
                            : size.width * 0.25,
                      ),
                    ),
                    //Basic Container
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          freeContainerSelection = false;
                          basicContainerSelection = true;
                          standardContainerSelection = false;
                          premiumContainerSelection = false;
                        });
                      },
                      child: PremiumContainer(
                          size: size,
                          category: 'Basic',
                          price: "₹19.9",
                          monthText: '/per month',
                          featuresText: 'Essential Features',
                          containerBorderColor:
                              (basicContainerSelection == false)
                                  ? Colors.grey.shade800
                                  : Colors.blue,
                          buttonName: (basicContainerSelection == false)
                              ? "Choose Plan"
                              : "Selected",
                          buttonNameColor: (basicContainerSelection == false
                              ? Colors.blue
                              : Colors.white),
                          buttonColor: (basicContainerSelection == false
                              ? Colors.transparent
                              : Colors.blue),
                          width: (basicContainerSelection == false)
                              ? size.width * 0.30
                              : size.width * 0.25),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.width * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Standard Container
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          freeContainerSelection = false;
                          basicContainerSelection = false;
                          standardContainerSelection = true;
                          premiumContainerSelection = false;
                        });
                      },
                      child: PremiumContainer(
                          size: size,
                          category: 'Standard',
                          price: "₹39.9",
                          monthText: '/per month',
                          featuresText: 'Standard Features',
                          containerBorderColor:
                              (standardContainerSelection == false)
                                  ? Colors.grey.shade800
                                  : Colors.blue,
                          buttonName: (standardContainerSelection == false)
                              ? "Choose Plan"
                              : "Selected",
                          buttonNameColor: (standardContainerSelection == false)
                              ? Colors.blue
                              : Colors.white,
                          buttonColor: (standardContainerSelection == false)
                              ? Colors.transparent
                              : Colors.blue,
                          width: (standardContainerSelection == false)
                              ? size.width * 0.30
                              : size.width * 0.25),
                    ),
                    //premium Container
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          freeContainerSelection = false;
                          basicContainerSelection = false;
                          standardContainerSelection = false;
                          premiumContainerSelection = true;
                        });
                      },
                      child: PremiumContainer(
                          size: size,
                          category: 'Premium',
                          price: "₹69.9",
                          monthText: '/per month',
                          featuresText: 'Premium Features',
                          containerBorderColor:
                              (premiumContainerSelection == false)
                                  ? Colors.grey.shade800
                                  : Colors.blue,
                          buttonName: (premiumContainerSelection == false)
                              ? "Choose Plan"
                              : "Selected",
                          buttonNameColor: (premiumContainerSelection == false
                              ? Colors.blue
                              : Colors.white),
                          buttonColor: (premiumContainerSelection == false
                              ? Colors.transparent
                              : Colors.blue),
                          width: (premiumContainerSelection == false)
                              ? size.width * 0.30
                              : size.width * 0.25),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
