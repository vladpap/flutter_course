import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Первые две иконки слева
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildSVGIconButton("assets/svg_icons/home-2.svg", 0),
                const SizedBox(width: 15),
                _buildSVGIconButton("assets/svg_icons/Heart_grey.svg", 1),
              ],
            ),
            
            // Центральная иконка в круге
            Transform.translate(
              offset: const Offset(0, -0),
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xFF48B2E7),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 25, 86, 116),
                      blurRadius: 10,
                      offset: const Offset(2, 5),
                    ),
                  ],
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/svg_icons/bag-2.svg"),
                  iconSize: 30,
                ),
              ),
            ),
            
            // Последние две иконки справа
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildSVGIconButton("assets/svg_icons/Notification.svg", 3),
                const SizedBox(width: 15),
                _buildSVGIconButton("assets/svg_icons/person.svg", 4),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(IconData icon, int index) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        icon,
        color: Colors.grey[700],
        size: 28,
      ),
    );
  }
}

Widget _buildSVGIconButton(String assetPath, int index) {
    return IconButton(
      onPressed: () {},
      icon: SvgPicture.asset(
        assetPath,
        //colorFilter: ColorFilter.mode(
        //  Colors.grey[700]!,
        //  BlendMode.srcIn,
        //),
        width: 24,
        height: 24,
      ),
    );
  }

