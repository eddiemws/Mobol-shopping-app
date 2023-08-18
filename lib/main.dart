import 'package:flutter/material.dart';
//import 'package:login_page/data.dart';
//import 'package:login_page/homescreen.dart';
import 'package:login_page/splashscreen.dart';
//import 'login.dart';
//import 'registration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
