import 'package:flutter/material.dart';

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
      home: HomeWidget(),
    );
  }
}

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
        child: RollCard() // 👉 Передаём виджет с карточкой
      ),
    );
  }
}

class RollCard extends StatelessWidget {
  const RollCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200, // 👉 Высота контейнера
      padding: const EdgeInsets.all(16), // 👉 Внутренний отступ

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
          Text("Вкусные Роллы", style: TextStyle(fontSize: 14)),
          SizedBox(height: 10),
          ElevatedButton(onPressed: () {}, child: Text("Купить")),
        ],
      ),
    );
  }
}