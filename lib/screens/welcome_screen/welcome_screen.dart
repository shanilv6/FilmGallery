import 'package:flutter/material.dart';
import 'package:moviappui/screens/login_screen/login.dart';
import 'package:get/get.dart';
import '../../widgets/welcome_login_bcontainer.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
         // height: 300,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
               image: AssetImage("assets/img_welcome_logo.jpg"),
                fit: BoxFit.cover),
            color: Colors.grey,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              const Text(
                "Watch your favourite\n  movies anytime,",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const Text(
                "anywhere,",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 470,
              ),
              GestureDetector(
                onTap: (() {

                  Get.to(LoginScreen());
                }),
                child: const WelcomeLoginButton(),
              )
            ],
          ),
        ),
      ),
    );
  }
}