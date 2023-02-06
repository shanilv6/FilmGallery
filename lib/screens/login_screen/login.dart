import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:moviappui/screens/forgot_password_screen/forgot_password.dart';
import 'package:moviappui/screens/bottom_navigationbar/bottom_navigationbar.dart';
import 'package:moviappui/widgets/login_signup_bcontainer.dart';
import 'package:moviappui/widgets/text_fields.dart';
import 'package:get/get.dart';
import '../signup_screen/signup.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final fullNameFormKey = GlobalKey<FormState>();

  final passwordFormKey = GlobalKey<FormState>();

  TextEditingController userNameTextController = TextEditingController();

  TextEditingController passwordTextController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    DateTime timeBackPressed = DateTime.now();
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
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
                    "Log In",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text(
                    "Enter your credentials to login yourself.",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 10,
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
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: (() {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SignupScreen()));
                          }),
                          child: Text("Don't have an account?")),
                    ],
                  ),
                  GestureDetector(
                      onTap: () {
                        if (fullNameFormKey.currentState!.validate()) {
                          if (passwordFormKey.currentState!.validate()) {
                            Get.to(BottomNav());
                          }
                        }
                      },
                      child:
                          const LoginSignupbContainers(Buttonname: "Log In")),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Forgot the magic word?",
                          style: TextStyle(color: Colors.grey)),
                      TextButton(
                          onPressed: (() {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ForgotPasswordScreen()));
                          }),
                          child: Text(
                            "Forgot Password",
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
