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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Learn flutter"),
              ElevatedButton(onPressed: (){}, child: Text("Ok")),
              const FlutterLogo(size: 50.0),
            ],
          ),
        ),
      ),
    );
  }
}
