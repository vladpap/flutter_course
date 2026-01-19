import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_cource/practical/practical_1.dart';
// import 'package:flutter_cource/practical/practical_2.dart';
import 'package:flutter_cource/practical/practical_3.dart';


void main() {
  runApp(const Page1());
}


class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hello Flutter App",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme),
        ),
      home: PracticLayout3(),
    );
  }
}