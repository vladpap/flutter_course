import 'package:flutter/material.dart';

class RollCard extends StatelessWidget {
  final double height;
  const RollCard({super.key, this.height = 200});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height, // 👉 Высота контейнера
      padding: const EdgeInsets.all(8), // 👉 Внутренний отступ

      decoration: BoxDecoration(
        color: Colors.white, // 👉 Цвет фона белый
        border: Border.all(color: Colors.blueGrey), // 👉 Границы черные
        borderRadius: BorderRadius.circular(16), // 👉 Закругление
        boxShadow: [BoxShadow(
          color: Colors.grey,
          offset: Offset(2, 2),
          blurRadius: 5,
        ),],
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/roll.png", width: 100),
          SizedBox(height: 10),
          Text("Вкусные Роллы", style: TextStyle(fontSize: 12)),
          SizedBox(height: 10),
          ElevatedButton(onPressed: () {}, child: Text("Купить")),
        ],
      ),
    );
  }
}