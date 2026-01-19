import 'package:flutter/material.dart';

class ButtonExapmle extends StatefulWidget {
  const ButtonExapmle({super.key});

  @override
  State<ButtonExapmle> createState() => _ButtonExapmleState();
}

class _ButtonExapmleState extends State<ButtonExapmle> {
  int counter = 100;

  void _incrementCounter(BuildContext content, int value) {
    setState(() {
      counter += value;
      _printButtonMessage(context, "Added \$ $value");
    });
  }

  void _printButtonMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "\$ $counter BitCoins", 
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 40),
        ElevatedButton(
          onPressed: () => _incrementCounter(context, 1), 
          child: Text("Получить \$1"),
        ),
        OutlinedButton(
          onPressed: () => _incrementCounter(context, 5), 
        child: Text("Получить \$5"),
      ),
      FilledButton(
        onPressed: () => _incrementCounter(context, 10), 
        child: Text("Получить \$10"),
      ),
      TextButton(
        onPressed: () => _incrementCounter(context, 20), 
        child: Text("Получить \$20"),
      ),
      IconButton(
        onPressed: () => _incrementCounter(context, 50), 
        icon: Icon(Icons.monetization_on),
        color: Colors.black87,
      ),
      SizedBox(height: 20),
      ElevatedButton.icon(
        onPressed: () => _incrementCounter(context, 25), 
        icon: Icon(Icons.attach_money),
        label: Text("Получить \$25"),
      ),
      OutlinedButton.icon(
        onPressed: () => _incrementCounter(context, 30), 
        icon: Icon(Icons.account_balance_wallet),
        label: Text("Получить \$30"),
      ),
      FilledButton.icon(
        onPressed: () => _incrementCounter(context, 35), 
        icon: Icon(Icons.account_balance),
        label: Text("Получить \$35"),
      ),
      ],
    );
  }
}