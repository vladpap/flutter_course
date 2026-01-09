import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PopulyarChart extends StatelessWidget {
  const PopulyarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24),
      child: Column(
        children: [
          Row(
            children: [
              Text("Популярное", style: TextStyle(fontSize: 22)),
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
                CardItem(title: "Калифорния", price: 527),
                SizedBox(width: 14),
                CardItem(title: "Филадельфия", price: 620),
                SizedBox(width: 14),
                CardItem(title: "Калифорния", price: 525),
                SizedBox(width: 14),
                CardItem(title: "Филадельфия", price: 620),
                SizedBox(width: 14),
                CardItem(title: "Калифорния", price: 525),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final String title;
  final int price;
  const CardItem({
    required this.title,
    required this.price,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 156,
      padding: EdgeInsets.only(left: 10, right: 10, bottom: 0, top: 5),
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
      child: Stack(
        alignment: AlignmentGeometry.center,
        clipBehavior: Clip.none,
        children: [
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 30,
              height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xFFF7F7F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: SvgPicture.asset(
                    "assets/svg_icons/Heart_white.svg",
                    width: 14,
                    colorFilter: ColorFilter.mode(
                      Color(0xFFF37171), 
                      BlendMode.srcIn,
                    ),
                  ),
              ),
            ),
            Center(
              child: Image.asset(
                "assets/images/roll3.png",
                width: 99,
              ),
            ),
            Text(
              "Хит", 
              style: TextStyle(
                color: Color(0xFF48B2E7),
                fontWeight: FontWeight.bold,
                fontSize: 18),
            ),
            SizedBox(height: 4),
            Text(
              title, 
              softWrap: false,
              maxLines: 1,
              overflow: TextOverflow.fade,
              style: TextStyle(
                color: Color(0xFF2B2B2B),
                fontWeight: FontWeight.bold,
                fontSize: 18),
              ),
            SizedBox(height: 4),
            Text(
              "₽ $price", 
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            right: -10,
            child: Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                color: Color(0xFF48B2E7),
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: SvgPicture.asset(
                    "assets/svg_icons/Cart_white.svg",
                    width: 14,
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}