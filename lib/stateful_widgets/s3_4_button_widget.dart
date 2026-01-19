import 'package:flutter/material.dart';


class InkWellExample extends StatelessWidget {
  const InkWellExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          //splashColor: Colors.red[300],
          onTap: () { },
          child: SizedBox(
            width: 200,
            height: 200,
            child: Center(child: Text("InkWell")),
          ),
        ),
      ),
    );
  }
}