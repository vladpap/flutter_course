import 'package:flutter/material.dart';

class GestureDetectorExample extends StatefulWidget {
  const GestureDetectorExample({super.key});

  @override
  State<GestureDetectorExample> createState() => _GestureDetectorExampleState();
}

class _GestureDetectorExampleState extends State<GestureDetectorExample> {
  String message = "Тыкай по картинке";

  _changeMessage(String newMessage) {
    setState(() {
      message = newMessage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(message, style: TextStyle(fontSize: 18)),
        SizedBox(height: 20),
        GestureDetector(
          onTap: () => _changeMessage("onTap: Нажатие на объект"),
          onDoubleTap: () => _changeMessage("onDoubleTap: Двойное нажатие на объект"),
          onLongPress: () => _changeMessage("onLongPress: Долгое нажатие"),
          onPanUpdate: (details) => _changeMessage("${details.delta}"),

          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/course.png"),
            radius: 150,
          ),
        )
      ],
    );
  }
}