import 'package:flutter/material.dart';
import 'package:flutter_cource/roll/home_widget.dart';
import 'package:flutter_cource/widgets/text_widget.dart';
import 'package:flutter_cource/widgets/icon_widget.dart';
import 'package:flutter_cource/widgets/color_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hello Flutter App",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Widget color"),
        ),
        body: ColorExample2(),
      ),
    );
  }
}
