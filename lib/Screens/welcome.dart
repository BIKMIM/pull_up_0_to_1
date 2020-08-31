import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          title: Text('Pull up 0 to 1'),
          backgroundColor: Colors.grey[900],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Image(
                  image: AssetImage('assets/pull_up_logo.png'),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Pull up',
              style: TextStyle(
                fontSize: 70.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '0 to 1',
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            FlatButton(
              padding: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 20.0),
              color: Colors.red,
              child: Text(
                '시작',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/grip');
              },
            ),
            SizedBox(
              height: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}
