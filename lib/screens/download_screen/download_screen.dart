import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviappui/widgets/shimmer_effect.dart';
import '../../widgets/downloads_container.dart';
import '../../widgets/shimmer_load.dart';


class DownloadScreen extends StatelessWidget {
  ShimmerController shimmerController = Get.put(ShimmerController());
   DownloadScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => shimmerController.isLoadingCompleted.value== true ?
        SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(
                height: 70,
              ),
              Center(
                  child: Text(
                "Downloads",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
              )),
              SizedBox(
                height: 15,
              ),
              DownloadContainer(ImagePath:"https://lumiere-a.akamaihd.net/v1/images/p_avengersendgame_19751_e14a0104.jpeg", Movietext1:"Avengers Endgame", Movietext2: "Marvel Productions", downloadtext1: "9.9MB", downloadtext2: "25.0MB", bluewidth: 60, greywidth:130),
              DownloadContainer(ImagePath:"https://m.media-amazon.com/images/I/81EBp0vOZZL._AC_SL1329_.jpg", Movietext1:"Lord of the Rings", Movietext2: "New Line Cinema", downloadtext1: "5.9MB", downloadtext2: "16.0MB", bluewidth: 40, greywidth:150),
              DownloadContainer(ImagePath:"https://m.media-amazon.com/images/M/MV5BMjEwNTg1MTA5Nl5BMl5BanBnXkFtZTgwOTg2OTM4MTE@._V1_.jpg", Movietext1:"Tranasformers", Movietext2: "Marvel Productions", downloadtext1: "17.9MB", downloadtext2: "19.0MB", bluewidth: 160, greywidth:30),
            ],
          ),
        ) : const ShimmerEffect()
      ),
    );
  }
}
