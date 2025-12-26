import 'package:flutter/material.dart';

class ColorExample2 extends StatelessWidget {
  const ColorExample2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(10, (generator) {
        return Expanded(
          child: Container(
            alignment: Alignment.center,
            width: double.infinity,
            color: Colors.amber[generator * 100],
            child: Text("amber[${generator * 100}]"),
          ),
        );
      }),
    );
  }
}