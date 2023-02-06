import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:moviappui/screens/login_screen/login.dart';
import 'package:moviappui/screens/forgot_password_screen/forgot_password.dart';
import 'package:moviappui/screens/bottom_navigationbar/bottom_navigationbar.dart';
import 'package:get/get.dart';
import '../../widgets/login_signup_bcontainer.dart';
import '../../widgets/text_fields.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool checkValue = false;
  final emailFormKey = GlobalKey<FormState>();
  final fullNameFormKey = GlobalKey<FormState>();
  final passwordFormKey = GlobalKey<FormState>();

  TextEditingController emailTextController = TextEditingController();
  TextEditingController userNameTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();

  DateTime timeBackPressed = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final difference = DateTime.now().difference(timeBackPressed);
        final isExitWarning = difference >= Duration(seconds: 2);
        timeBackPressed = DateTime.now();
        if (isExitWarning) {
          final message = "Press back again to exit";
          Fluttertoast.showToast(msg: message, fontSize: 18);
          return false;
        } else {
          //Fluttertoast.cancel();
          SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop');
          //  SystemNavigator.pop();
          return true;
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    const CircleAvatar(
                      backgroundImage: AssetImage("assets/img_login.png"),
                      radius: 30,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Register",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const Text(
                      "Enter the details below to\nregister yourself with us.",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      decoration: const BoxDecoration(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 10,
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
                    TextFields(
                      hintText: 'Username',
                      keyFormvalue: fullNameFormKey,
                      validators: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter the name";
                        } else if (value.length < 3) {
                          return 'Too short';
                        }
                        return null;
                      },
                      textType: TextInputType.name,
                      controllers: userNameTextController,
                    ),
                    TextFields(
                      hintText: 'Password',
                      keyFormvalue: passwordFormKey,
                      validators: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter the Password";
                        } else if (value.length < 8) {
                          return 'Minimum length 8 required';
                        }
                        return null;
                      },
                      textType: TextInputType.name,
                      controllers: passwordTextController,
                    ),
                    Row(
                      children: [
                        Checkbox(
                            side: BorderSide(color: Colors.blueAccent),
                            value: checkValue,
                            onChanged: (value) {
                              setState(() {
                                checkValue = value!;
                              });
                            }),
                        Text(
                          "Sign in automatically on each visit",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: (() {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                            }),
                            child: Text("Already have an account?")),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        if (emailFormKey.currentState!.validate()) {
                          if (fullNameFormKey.currentState!.validate()) {
                            if (passwordFormKey.currentState!.validate()) {
                              if (checkValue == true) {
                                Get.to(BottomNav());
                              }
                            }
                          }
                        }
                      },
                      child: const LoginSignupbContainers(
                        Buttonname: 'Register',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Forgot the magic word?",
                            style: TextStyle(color: Colors.grey)),
                        TextButton(
                            onPressed: (() {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      ForgotPasswordScreen()));
                            }),
                            child: Text(
                              "Forgot Password",
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
