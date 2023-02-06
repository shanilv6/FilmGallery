import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:moviappui/screens/welcome_screen/welcome_screen.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

 // final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
        theme: ThemeData(scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.blue,
            appBarTheme: AppBarTheme(
              elevation: 0, // This removes the shadow from all App Bars.
            )
      ),
      home: const WelcomeScreen(),
    );
  }
}
