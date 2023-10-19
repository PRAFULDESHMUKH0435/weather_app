import 'package:flutter/material.dart';
import 'homepage2.dart';
import 'package:weather_app/splashscreen.dart';

import 'homepage.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage2(),
    );
  }
}
