import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample ({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blue,
        height: 170,
        child: Text(
          "Вкусные роллы",
          style: TextStyle(
            fontSize: 72.0,
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.wavy,
            decorationColor: Colors.red,
            letterSpacing: 2.5,
          ),
        
          textAlign: TextAlign.center,
          softWrap: true,
          maxLines: 2,
          overflow: TextOverflow.fade,
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}