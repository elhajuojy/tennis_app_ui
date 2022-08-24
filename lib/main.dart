import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tennis_app2/screens/home_screen.dart';
import 'package:tennis_app2/screens/train_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Gilroy'),
      home: const HomePage(),
    );
  }
}
