import 'package:flutter/material.dart';

class RoundedImageExample2 extends StatelessWidget {
  const RoundedImageExample2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Colors.deepPurple,
        child: Text(
          "F",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }
}

class RoundedImageExample3 extends StatelessWidget {
  const RoundedImageExample3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Colors.deepPurple,
        child: 
        Icon(Icons.favorite, color: Colors.white, size: 50),
      ),
    );
  }
}

class OvalImageExample extends StatelessWidget {
  const OvalImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipOval(
        child: Image.asset(
          "assets/images/flutter-tyan.png",
          width: 300,
          height: 200,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}