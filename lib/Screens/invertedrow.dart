import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InvertedRow extends StatefulWidget {
  @override
  _InvertedRowState createState() => _InvertedRowState();
}

class _InvertedRowState extends State<InvertedRow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
          title: Text(
            '인버티드 로우 (Inverted Row)',
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
                image: AssetImage('assets/invertedrow.png'),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            '인버티드 로우',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 40.0),
          Text(
            '''
            낮은 철봉등에서
            몸을 기울인채로 당겨 올리는 동작입니다.
            
            풀업에 사용되는 등근육들을 강화합니다.
            눕는 각도에 따라서 난이도 조절이 가능합니다.
            
            코어에 힘을 빼지않고 수행하는 것이 중요합니다.
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
                  Navigator.pushNamed(context, '/negative');
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
