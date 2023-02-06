import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moviappui/screens/bottom_navigationbar/bottom_navigationbar.dart';
import 'package:moviappui/widgets/login_signup_bcontainer.dart';
import 'package:moviappui/widgets/text_fields.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});

  final emailFormKey = GlobalKey<FormState>();
  TextEditingController emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("assets/img_lock.png")),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Forgot Password",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Enter your email address below and we will send",
              style: TextStyle(color: Colors.grey),
            ),
            const Text(
              "you further instructions on how to reset your password.",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 1,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.grey),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFields(
              hintText: 'Email',
              keyFormvalue: emailFormKey,
              validators: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the Email";
                } else if (!value.contains('@gmail') ||
                    !value.contains('.com')) {
                  return 'Invaild Email';
                }
                return null;
              },
              textType: TextInputType.emailAddress,
              controllers: emailTextController,
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                if (emailFormKey.currentState!.validate()) {
                  Get.to(BottomNav());
                }
              },
              child: const LoginSignupbContainers(Buttonname: "Submit"),
            )
          ],
        ),
      ),
    );
  }
}
