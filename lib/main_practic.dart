import 'package:flutter/material.dart';
// import 'package:flutter_cource/practical/practical_1.dart';
import 'package:flutter_cource/practical/practical_2.dart';


void main() {
  runApp(const Page1());
}


class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: "Hello Flutter App",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: PracticLayout2(),
    );
  }
}