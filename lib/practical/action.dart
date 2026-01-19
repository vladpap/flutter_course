import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class ActionChart extends StatelessWidget {
  const ActionChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24),
      child: Column(
        children: [
          Row(
            children: [
              Text("Акции", style: TextStyle(
                fontSize: 22, fontWeight: 
                FontWeight.bold),
                ),
              Spacer(),
              Text(
                "Все",
                style: TextStyle(color: Colors.blue, fontSize: 16),
                )
            ],
          ),
          SizedBox(height: 12),
          SingleChildScrollView(
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ActionItem(),
                SizedBox(width: 14),
                ActionItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ActionItem extends StatelessWidget {
  const ActionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 115,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white, // The color of the container
        borderRadius: BorderRadius.circular(18), // Optional: for rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 2),               // X, Y offset of the shadow
            blurRadius: 0,                      // How diffused the shadow is
            spreadRadius: 1,                     // How much the shadow expands
          ),
        ],
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Зима 2026",
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),),
                Text(
                  "Скидка 25%",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF48B2E7),
                  ),
                ),
              ],
            ),
            SizedBox(width: 14),
            Image.asset(
              width: 116,
              height: 116,
              fit: BoxFit.contain,
              "assets/images/summer.png"
            ),
          ],
        ),
      ),
    );
  }
}