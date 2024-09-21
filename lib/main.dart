import 'package:assingment/componemt/login.dart';
import 'package:assingment/screen/app_dasrboard.dart';
import 'package:assingment/screen_final/app_dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: AppDashboard(),
   );
  }
}
