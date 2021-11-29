import 'package:flutter/material.dart';

class LoggedAccount extends StatelessWidget {
  const LoggedAccount({Key? key}) : super(key: key);
  // 1
  final String title = 'Learn Alphabets';
  final String chef = 'Learn It now!';

  // 2
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('assets/saya.jpg'),
                radius: 30.0,
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Al Yafi',
                    style: TextStyle(
                      letterSpacing: 2.0,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[800],
                    ),
                  ),
                  Text(
                    'Computer Engineers           ',
                    style: TextStyle(
                      letterSpacing: 2.0,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.qr_code_2_rounded,
                size: 50.0,
                color: Colors.green[800],
              )
            ],
          ),
          Divider(
            height: 30.0,
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.account_circle_rounded,
                color: Colors.green,
                size: 30,
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Account',
                    style: TextStyle(
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[800],
                    ),
                  ),
                  Text(
                    'Privacy, Security, Settings',
                    style: TextStyle(
                      letterSpacing: 2.0,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.notifications,
                color: Colors.green,
                size: 30,
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Notification',
                    style: TextStyle(
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[800],
                    ),
                  ),
                  Text(
                    'Notification sound settings',
                    style: TextStyle(
                      letterSpacing: 2.0,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.storage,
                color: Colors.green,
                size: 30,
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Data & Storage',
                    style: TextStyle(
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[800],
                    ),
                  ),
                  Text(
                    'Storage usage & downloads settings',
                    style: TextStyle(
                      letterSpacing: 2.0,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.help_rounded,
                color: Colors.green,
                size: 30,
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Help',
                    style: TextStyle(
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[800],
                    ),
                  ),
                  Text(
                    'Help Center & privacy policy',
                    style: TextStyle(
                      letterSpacing: 2.0,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.share,
                color: Colors.green,
                size: 30,
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Invite Peoples',
                    style: TextStyle(
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[800],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            height: 50.0,
          ),
          Text(
            'Contact',
            style: TextStyle(
              letterSpacing: 2.0,
              color: Colors.black45,
              fontSize: 16,
            ),
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.email_rounded,
                color: Colors.green,
                size: 30,
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'alpharead@gmail.com',
                    style: TextStyle(
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
