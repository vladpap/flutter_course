import 'package:flutter/material.dart';

class StateExample extends StatefulWidget {
  const StateExample({super.key});

  @override
  State<StateExample> createState() => _StateExampleState();
}

class _StateExampleState extends State<StateExample> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    debugPrint("Update UI");
    return Card(
      child: ListTile(
        leading: Image.asset("assets/images/fd.png"),
        title: Text("Stateless"),
        subtitle: Text("Flutter Vibes".toUpperCase()),
        trailing: IconButton(
          onPressed: () {
            setState(() {
              isLiked = !isLiked;
            });
          }, 
          icon: isLiked
            ? Icon(Icons.favorite, color: Colors.red)
            : Icon(Icons.favorite_border),
          ),
      ),
    );
  }
}