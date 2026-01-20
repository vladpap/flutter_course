import 'package:flutter/material.dart';
//import 'package:flutter_cource/stateful_widgets/s1_stateful_widget.dart';
//import 'package:flutter_cource/stateful_widgets/s2_stateful_widget.dart';
//import 'package:flutter_cource/stateful_widgets/s3_button_widget.dart';
//import 'package:flutter_cource/stateful_widgets/s3_2_button_widget.dart';
//import 'package:flutter_cource/stateful_widgets/s3_3_button_widget.dart';
//import 'package:flutter_cource/stateful_widgets/s3_3_button_widget.dart';
import 'package:flutter_cource/stateful_widgets/s3_4_button_widget.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Course",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: Scaffold(
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 32),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFBFF098), Color(0xFF6FD6FF)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWellExample(),
            ],
          ),
        ),
      ),
    );
  }
}