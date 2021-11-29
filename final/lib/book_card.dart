import 'package:flutter/material.dart';

import 'fooderlich_theme.dart';

class BookCard extends StatelessWidget {
  const BookCard({Key? key}) : super(key: key);
  // 1
  final String title = 'Learn Alphabets';
  final String chef = 'Learn It now!';

  // 2
  @override
  Widget build(BuildContext context) {
    // 3
    return Container(
      width: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InkWell(
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(16),
                  // 2
                  constraints: const BoxConstraints.expand(
                    width: 100,
                    height: 100,
                  ),
                  // 3
                  decoration: const BoxDecoration(
                    // 4
                    image: DecorationImage(
                      // 5
                      image: AssetImage('assets/book_cover.png'),
                      // 6
                      fit: BoxFit.cover,
                    ),
                    // 7
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.black,
                    //     spreadRadius: 1,
                    //     blurRadius: 5,
                    //     offset: Offset(2, 3), // changes position of shadow
                    //   )
                    // ],
                  ),
                ),
                SizedBox(height: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'E-Book',
                      style: TextStyle(
                        letterSpacing: 2.0,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.green[800],
                      ),
                    ),
                    Text(
                      'Computer Engineers',
                      style: TextStyle(
                        letterSpacing: 2.0,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            onTap: () {
              print('i Clicked3');
            },
          ),
        ],
      ),
    );
  }
}
