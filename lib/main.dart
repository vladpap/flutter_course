import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    var myColorScheme = ColorScheme.fromSeed(seedColor: Colors.purple);

    return MaterialApp(
      title: "Flutter app",

      theme: ThemeData(
        colorScheme: myColorScheme,
        appBarTheme: AppBarTheme(
          backgroundColor: myColorScheme.inversePrimary,
        ),
      ),

      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter application"),
        ),
        body: HomeWidget(),
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget
({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/roll.png",
            width: 250,
          ),
          const Text(
            "Вкусные роллы",
            style: TextStyle(fontSize: 24.0),
            ),
          ElevatedButton(onPressed: (){
            print ("Вы купили роллы. Спасибо за заказ!");
          }, 
          child: Text("Купить")),
        ],
      ),
    );
  }
}