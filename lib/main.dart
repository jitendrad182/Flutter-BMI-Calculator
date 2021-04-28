import 'package:bmi/const.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: kThemeColor,
        scaffoldBackgroundColor: kThemeColor,
      ),
      home: InputPage(),
    );
  }
}
