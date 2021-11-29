import 'package:alpharead/account_logged.dart';
import 'package:flutter/material.dart';

import 'card1.dart';
import 'card2.dart';
import 'card3.dart';
import 'home_one.dart';

// 1
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  PageController pageController = PageController();

  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.animateToPage(index,
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlphaRead',
            // 2
            style: Theme.of(context).textTheme.headline6),
      ),
      body: PageView(
        controller: pageController,
        children: <Widget>[
          const HomeOne(),
          Container(color: Colors.redAccent),
          const LoggedAccount(),
        ],
      ),
      // ignore: unnecessary_new
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.green,
            primaryColor: Colors.red,
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: TextStyle(color: Colors.yellow))),
        // ignore: unnecessary_new
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.history), label: 'History'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_sharp), label: 'Account'),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.yellow,
          unselectedItemColor: Colors.white,
          onTap: onTapped,
        ),
      ),
    );
  }
}
