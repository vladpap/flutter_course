import 'package:flutter/material.dart';


class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget> [
        Container(
          width: 300,
          height: 300,
          color: Colors.red[200],
        ),
        Container(
          width: 250,
          height: 250,
          color: Colors.green[200],
        ),
        Container(
          width: 200,
          height: 200,
          color: Colors.blue[200],
        ),
      ],
    );
  }
}

 class StackExampleCircle extends StatelessWidget {
   const StackExampleCircle({super.key});
 
   @override
   Widget build(BuildContext context) {
     return Stack(
      children: <Widget>[
        Center(
          child: CircleAvatar(radius: 200, backgroundColor: Colors.red[200]),
        ),
        Center(
          child: CircleAvatar(radius: 150, backgroundColor: Colors.green[200]),
        ),
        Center(
          child: CircleAvatar(radius: 100, backgroundColor: Colors.blue[200]),
        ),
      ],
     );
   }
 }


 class StackImageExample extends StatelessWidget {
   const StackImageExample({super.key});
 
   @override
   Widget build(BuildContext context) {
     return Center(
      child: SizedBox(
        width: 350,
        height: 350,
        child: Stack(
          children: <Widget>[
            Image.asset(
              'assets/images/course.png',
              fit: BoxFit.fitHeight,
              width: double.infinity,
              height: double.infinity,
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.7),
                ),
                child: Text(
                  'Flutter курс 2026',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
     );
   }
 }

 class StackBageExample extends StatelessWidget {
   const StackBageExample({super.key});
 
   @override
   Widget build(BuildContext context) {
     return Center(
      child: Card(
        color: Colors.yellow[100],
        margin: EdgeInsets.all(20),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsetsGeometry.all(16),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/flutter-tyan.png"),
                  ),
                  Positioned(
                    top: -5,
                    right: -5,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      constraints: BoxConstraints(
                        minWidth: 20,
                        minHeight: 20,
                      ),
                      child: Center(
                        child: Text(
                          "5",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Ekaterina Papina",
                    style: TextStyle(
                      fontSize: 16, 
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                  Text(
                    "Онлайн",
                    style: TextStyle(
                      fontSize: 14, 
                      fontWeight: FontWeight.bold,
                      color: Colors.green[500],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
     );
   }
 }

 class StackGoodExample extends StatelessWidget {
   const StackGoodExample({super.key});
 
   @override
   Widget build(BuildContext context) {
     return Center(
       child: Card(
        color: Colors.amber[100],
        margin: EdgeInsets.all(20),
        child: Padding(
          padding: EdgeInsetsGeometry.all(16),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                "assets/images/marker.jpg",
                width: 250,
                height: 250,
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.amber.withValues(alpha: 0.7),
                  ),
                  child: Text(
                    "Белый маркер",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.red.withValues(alpha: 0.8),
                  ),
                  child: Text(
                    "Новинка",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          ),

       ),
     );
   }
 }