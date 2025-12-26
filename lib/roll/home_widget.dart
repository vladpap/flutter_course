import 'package:flutter/material.dart';
import 'package:flutter_cource/roll/roll_card.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // 👉 Scaffold теперь здесь!
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, 
        title: const Text("UI Column Row"),
      ),
      body: Center(
        child: Container(
          height: 250,
          decoration: BoxDecoration(
            color: Color.fromARGB(139, 33, 149, 246)
          ),
          child: Row(
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              RollCard(),
              RollCard(height: 250),
              RollCard(),
            ],
          ),
        ), // 👉 Передаём виджет с карточкой
      ),
    );
  }
}