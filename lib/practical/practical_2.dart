import 'package:flutter/material.dart';

final String text1 = "Виджет, который размещает список дочерних виджетов горизонтально в одной строке";
final String text2 = "Виджет, который размещает список дочерних виджетов вертикально в одном столбце";
final String text3 = "Простой виджет, для отображения и форматирования текста";
final String text4 = "Гибкий виджет, который расширяет виджет на всё пространство";

class PracticLayout2 extends StatelessWidget {
  const PracticLayout2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text(""),
        ),
        body: Column(
            children: [
              Expanded(
                child: Row(children: [
                  Expanded(child: Container(
                    padding: EdgeInsetsGeometry.all(20),
                    color: Colors.amber[300],
                    child: Center(child: Card_practical(
                      icon_card: Icons.view_column,
                      title: "Row()",
                      description: text1,
                    )))),
                  Expanded(child: Container(
                    padding: EdgeInsetsGeometry.all(20),
                    color: Colors.grey[300],
                    child: Center(child: Card_practical(
                      icon_card: Icons.view_agenda,
                      title: "Column()",
                      description: text2,
                    )))),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: Container(
                      padding: EdgeInsetsGeometry.all(20),
                      color: Colors.grey[300],
                      child: Center(child: Card_practical(
                        icon_card: Icons.text_fields,
                        title: "Text()",
                        description: text3,
                      )))),
                    Expanded(child: Container(
                      padding: EdgeInsetsGeometry.all(20),
                      color: Colors.amber[300],
                      child: Center(child: Card_practical(
                        icon_card: Icons.open_in_full,
                        title: "Expanded()",
                        description: text4,
                      )))),
                  ],
                ),
              )
            ],
          ),
    );
  }
}


class Card_practical extends StatelessWidget {
  final IconData icon_card;
  final String title;
  final String description;

  const Card_practical({
    required this.icon_card,
    required this.title,
    required this.description,
    super.key
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon_card), //Icons.view_column),
            SizedBox(width: 10),
            Text(title), //" Row()")
          ],
        ),
        SizedBox(height: 10.0),
        Text(
          description, //"Виджет, который размещает список дочерних виджетов горизонтально в одной строке",
          textAlign: TextAlign.justify,
          ),
      ],
    );
  }
}