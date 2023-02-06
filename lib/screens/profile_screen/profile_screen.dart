import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moviappui/screens/login_screen/login.dart';
import 'package:moviappui/widgets/login_signup_bcontainer.dart';

import '../../widgets/profile_details.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:  Column(
          children: [
             const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Profile",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const ProfileDetails(
              ProfileIcon: Icons.person,
              text: "Edit Profile",
            ),
            const ProfileDetails(
              ProfileIcon: Icons.notifications_outlined,
              text: "My Notifications",
            ),
            const ProfileDetails(
              ProfileIcon: Icons.remove_red_eye_outlined,
              text: "WatchList",
            ),
            const ProfileDetails(
              ProfileIcon: Icons.language_outlined,
              text: "Language",
            ),
            const ProfileDetails(
              ProfileIcon: Icons.category_outlined,
              text: "Category",
            ),
            const ProfileDetails(
              ProfileIcon: Icons.settings_outlined,
              text: "App Settings",
            ),
            const ProfileDetails(
              ProfileIcon: Icons.group_add_outlined,
              text: "Refferals",
            ),
            const ProfileDetails(
              ProfileIcon: Icons.headphones_outlined,
              text: "Feedback & Help",
            ),
            const ProfileDetails(
              ProfileIcon: Icons.play_circle_fill_outlined,
              text: "Management Subscriptions",
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: (() {}), child: const Text("Terms of use")),
                      const Text(
                        "and",
                        style: TextStyle(color: Colors.white),
                      ),
                      TextButton(
                          onPressed: (() {}), child: const Text("Privacy policy"))
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>  LoginScreen()));
                    },
                    child: const LoginSignupbContainers(Buttonname: "SignOut"),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
