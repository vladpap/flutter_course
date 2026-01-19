import 'package:flutter/material.dart';


enum HeaderTextSize {small, medium, large, extraLarge,}

const String paragraph1 = "Flutter — это фреймворк с открытым исходным кодом для создания кроссплатформенных приложений, разработанный компанией Google.";
const String paragraph2 = "Он позволяет разрабатывать приложения для мобильных устройств (iOS и Android), веб-приложения (Flutter Web), а также настольные приложения (Windows, macOS, Linux) с использованием единой кодовой базы.";
const List<String> featuresText = [
  "Язык программирования Dart",
  "Единая кодовая база",
  "Мультиплатформенность",
  "Высокая производительность",
  "Горячая перезагрузка",
];

class PracticLayout1 extends StatelessWidget {
  const PracticLayout1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
        ),
        body: SingleChildScrollView(         
          child: SizedBox(
            //height: 250,
            width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/course.png", width: double.infinity),
              Heading(headerText: "Flutter course 2025", headerSize: HeaderTextSize.extraLarge),
              Paragraphs(),
              Heading(headerText: "Основные особенности Flutter"),
              Features(),
              SizedBox(height: 20),
            ],
          ),
          ),
        ),
    );
  }
}


class Heading extends StatelessWidget {
  final String headerText;
  final HeaderTextSize headerSize;
  const Heading({
    required this.headerText,
    this.headerSize = HeaderTextSize.medium,
    super.key,
    });
  
  double _getFontSize() {
    switch (headerSize) {
      case HeaderTextSize.small:
        return 12.0;
      case HeaderTextSize.medium:
        return 20.0;
      case HeaderTextSize.large:
        return 24.0;
      case HeaderTextSize.extraLarge:
        return 28.0;
    }
  }
  
  FontWeight _getFontWeight() {
    switch (headerSize) {
      case HeaderTextSize.small:
        return FontWeight.normal;
      case HeaderTextSize.medium:
        return FontWeight.w500;
      case HeaderTextSize.large:
      case HeaderTextSize.extraLarge:
        return FontWeight.bold;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      child: Text(
        headerText,
        style: TextStyle(
          fontSize: _getFontSize(),
          fontWeight: _getFontWeight()
        ),
      ),
    );
  }
}

class Paragraphs extends StatelessWidget {
  const Paragraphs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Text(paragraph1, textAlign: TextAlign.justify),
          SizedBox(height: 20),
          Text(paragraph2, textAlign: TextAlign.justify),
        ],
      ),
    );
  }
}


class Features extends StatelessWidget {
  const Features({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var text in featuresText)
            Row(
              children: [ 
                Icon(Icons.favorite, color: Colors.blueAccent, size: 20),
                SizedBox(width: 16),
                Text(text),
              ],
            ),
        ],
      ),
    );
  }
}