import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviappui/screens/premium_screen/premium_screen.dart';

class HomeMarvelContainer extends StatelessWidget {
  const HomeMarvelContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Container(
      height: size.width * 0.60,
      width: size.width * 0.99,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: const DecorationImage(
            image: NetworkImage(
              "https://thedisinsider.com/wp-content/uploads/2020/12/marvel-disney.jpg",
            ),
            fit: BoxFit.cover),
      ),
      child: Padding(
        padding:  EdgeInsets.all(12.0),
        child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children:  [
                Text(
                  "Avengers:Endgame",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Text(
                      "Marvel Studio",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),

                  ],
                ),
              ],
            ),
            GestureDetector(
              onTap: (){
                Get.to(PremiumScreen());

              },
              child: Container(
                height: size.width*0.12,
                width: size.width*0.50,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child:  Center(
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(Icons.diamond_outlined,color: Colors.white,),
                        Text(
                          "Click To Get Premium",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
