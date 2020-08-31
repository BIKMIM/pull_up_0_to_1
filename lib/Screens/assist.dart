import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assist extends StatefulWidget {
  @override
  _AssistState createState() => _AssistState();
}

class _AssistState extends State<Assist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
          title: Text(
            '어시스트 풀업 (Assist Pull-up)',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          backgroundColor: Colors.grey[900]),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Center(
              child: Image(
                image: AssetImage('assets/assist.png'),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            '어시스트 풀업',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 40.0),
          Text(
            '''
            적당한 높이의 의자나 상자등을 
            밟은채로 철봉에 매달립니다.
            
            어시스트 풀업은 부상의 위험이 매우 낮고,
            턱걸이의 느낌을 가져보기 쉽습니다.
            
            또한 다리힘을 얼마나 쓰느냐로
            난이도를 조절 할 수 있는 장점이 있습니다.
            ''',
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                padding: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 20.0),
                color: Colors.red,
                child: Text(
                  '연습하기',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/invertedrow');
                },
              ),
              SizedBox(width: 20.0),
              FlatButton(
                padding: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 20.0),
                color: Colors.red,
                child: Text(
                  '다음운동',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/invertedrow');
                },
              ),
            ],
          ),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
