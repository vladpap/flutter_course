import 'package:flutter/material.dart';


class CategoryChart extends StatelessWidget {
  const CategoryChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Категории",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            )),
          SizedBox(height: 12),
          CategoryList(),
        ],
      ),
    );
  }
}

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // Горизонтальная прокрутка
      child: Row(
        children: [
          CategoryButton(title: "Все"),
          SizedBox(width: 16),
          CategoryButton(title: "Горячие"),
          SizedBox(width: 16),
          CategoryButton(title: "Сеты"),
          SizedBox(width: 16),
          CategoryButton(title: "Running"),
        ],
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String title;
  const CategoryButton({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.all(5),
      width: 108,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
 
      child: Center(
        child: Text(title)
      ),
    );
  }
}