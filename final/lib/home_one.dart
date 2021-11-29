import 'package:alpharead/book_card.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'card1.dart';
import 'card2.dart';
import 'card3.dart';

class HomeOne extends StatelessWidget {
  const HomeOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 10.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  child: Text('How to Read'),
                ),
                SizedBox(
                  height: 10.0,
                ),
                InkWell(
                  child: Container(
                    child: const Card1(),
                  ),
                  onTap: () {
                    print('i Clicked');
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                InkWell(
                  child: Container(
                    child: const Card3(),
                  ),
                  onTap: () {
                    print('i Clicked2');
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  height: 30.0,
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
              width: double.infinity,
              child: Text('Book List'),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  const BookCard(),
                  SizedBox(
                    width: 20.0,
                  ),
                  const BookCard(),
                  SizedBox(
                    width: 20.0,
                  ),
                  const BookCard(),
                ],
              ),
            ),
            SizedBox(
              height: 50.0,
              width: double.infinity,
            ),
            Container(
              child: Row(
                children: <Widget>[
                  const BookCard(),
                  SizedBox(
                    width: 20.0,
                  ),
                  const BookCard(),
                  SizedBox(
                    width: 20.0,
                  ),
                  const BookCard(),
                ],
              ),
            ),
            SizedBox(
              height: 50.0,
              width: double.infinity,
            ),
            Container(
              child: Row(
                children: <Widget>[
                  const BookCard(),
                  SizedBox(
                    width: 20.0,
                  ),
                  const BookCard(),
                  SizedBox(
                    width: 20.0,
                  ),
                  const BookCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
