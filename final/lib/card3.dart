import 'package:flutter/material.dart';

import 'fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);
  // 1
  final String title = 'NAME OF THINGS';
  final String chef = 'Go for it!';

  // 2
  @override
  Widget build(BuildContext context) {
    // 3
    return Center(
      child: Container(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black,
                      offset: Offset(5.0, 5.0),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              child: Text(
                chef,
                style: TextStyle(
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black,
                      offset: Offset(5.0, 5.0),
                    ),
                  ],
                ),
              ),
              bottom: 10,
              right: 0,
            )
          ],
        ),
        // 1
        padding: const EdgeInsets.all(16),
        // 2
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 150,
        ),
        // 3
        decoration: const BoxDecoration(
          // 4
          image: DecorationImage(
            // 5
            image: AssetImage('assets/mag3.png'),
            // 6
            fit: BoxFit.cover,
          ),
          // 7
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(2, 3), // changes position of shadow
            )
          ],
        ),
      ),
    );
  }
}
