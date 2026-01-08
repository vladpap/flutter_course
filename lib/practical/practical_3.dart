import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_cource/practical/category.dart';


class PracticLayout3 extends StatelessWidget {
  const PracticLayout3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F7F9),
      appBar: AppBar(
        toolbarHeight: 80,
        actionsPadding: EdgeInsets.only(right: 18),
        backgroundColor: Color(0xFFF7F7F9),
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/svg_icons/Menu_black.svg",
            height: 26,
          ),
          onPressed: () {}, 
          ),
        centerTitle: true,
        title: Text(
            "Главная", style: TextStyle(fontSize: 36)),
        actions: [ShopCart(emptyCart: false)],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            CategoryChart(),
            Text("Populyar"),
            Text("Action"),
          ],
        ),
      ),
    );
  }
}

class ShopCart extends StatelessWidget {
  final bool emptyCart;
  const ShopCart({
    required this.emptyCart,
    super.key
    });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentGeometry.center,
      children: [
        // Основная кнопка
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(22),
          ),
          width: 44,
          height: 44,
        ),
        // Основная иконка
        IconButton(
          icon: SvgPicture.asset(
            "assets/svg_icons/Shop_cart_black.svg",
            width: 30,
            height: 30,
            ),
          onPressed: () {},
        ),
        if (!emptyCart) 
          // Red circle
          Positioned(
            top: 3,
            right: 5,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFF37171),
                borderRadius: BorderRadius.circular(10),
              ),
              width: 10,
              height: 10,
            ),
          ),
        SizedBox(width: 18),
      ],
    );
  }
}