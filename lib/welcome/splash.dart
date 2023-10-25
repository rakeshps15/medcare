import 'package:flutter/material.dart';
import 'package:medcare/welcome/splash%202.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Welcome Screen',
      home: MainScreen(),
    );
  }
}

void main() {
  runApp(const MyApp());
}




