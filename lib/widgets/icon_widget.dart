import 'package:flutter/material.dart';

class IconExample extends StatelessWidget {
  const IconExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.favorite_border, color: Colors.red, size: 24),
          SizedBox(width: 10),
          Text("Like", style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}