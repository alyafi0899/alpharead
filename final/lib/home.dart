import 'package:flutter/material.dart';

import 'card1.dart';
import 'card2.dart';
import 'card3.dart';

// 1
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlphaRead',
            // 2
            style: Theme.of(context).textTheme.headline6),
      ),
        body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Card1(),
            SizedBox(height: 10.0,),
            const Card2(),
            SizedBox(height: 10.0,),
            const Card3(),
          SizedBox(height: 10.0,),
          ],
        ),
        ),
    );
  }
}
