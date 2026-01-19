import 'package:flutter/material.dart';


class ButtonStyleExample extends StatelessWidget {
  const ButtonStyleExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.deepPurple,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(8),
            ),
          ),
          
          onPressed: () { }, 
          child: Text("Заказать"),
        ),
      ],
    );
  }
}