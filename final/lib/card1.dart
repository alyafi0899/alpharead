import 'package:flutter/material.dart';

import 'fooderlich_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);
  // 1
  final String title = 'Learn Alphabets';
  final String chef = 'Learn It now!';

  // 2
  @override
  Widget build(BuildContext context) {
    // 3
    return Center(
      child: Container(
        child: Stack(
          children: [
            // 8
            Align(
              alignment: Alignment.center,
              child: Text(
                title,
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    // ignore: prefer_const_constructors
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black,
                      offset: Offset(5.0, 5.0),
                    ),
                  ],
                ),
              ),
            ),
            // 11
            Positioned(
              child: Text(
                chef,
                // ignore: prefer_const_constructors
                style: TextStyle(
                  color: Colors.white,
                  shadows: [
                    // ignore: prefer_const_constructors
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black,
                      offset: Offset(5.0, 5.0),
                    ),
                  ],
                ),
              ),
              bottom: 10,
              right: 10,
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
            image: AssetImage('assets/mag1.png'),
            // 6
            fit: BoxFit.cover,
          ),
          // 7
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 0.2,
              blurRadius: 5,
              offset: Offset(2, 3), // changes position of shadow
            )
          ],
        ),
      ),
    );
  }
}
