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