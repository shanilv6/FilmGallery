import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:moviappui/screens/categories/categeryscreen.dart';
import 'package:moviappui/screens/download_screen/download_screen.dart';
import 'package:moviappui/screens/home_screen/home_screen.dart';
import 'package:moviappui/screens/profile_screen/profile_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;
  changeIndex(value) {
    setState(() {
      currentIndex = value;
    });
  }

  List screen = [
    HomeScreen(),
    CategoryScreen(),
    DownloadScreen(),
    const ProfileScreen(),
  ];
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
        body: screen[currentIndex],
        bottomNavigationBar: Container(
          height: 70,
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
            color: Colors.grey.shade600,
            width: 2.0,
          ))),
          child: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: changeIndex,
              backgroundColor: Colors.black,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.white,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.category), label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.download), label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
              ]),
        ),
      ),
    );
  }
}
