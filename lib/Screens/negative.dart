import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Negative extends StatefulWidget {
  @override
  _NegativeState createState() => _NegativeState();
}

class _NegativeState extends State<Negative> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
          title: Text(
            '네거티브 친업 (Negative chin-up)',
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
                image: AssetImage('assets/negative.png'),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            '네거티브 친업',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 40.0),
          Text(
            '''
            점프를 하여 철봉 최상단에서
            광배근으로 버티면서 천천히 내려옵니다.
            
            의식적으로 광배근에 집중해야 합니다.
            
            단, 갑자기 힘을 빼고 철봉에서 떨어지면
            팔꿈치, 어깨등의 부상이 있을 수 있으므로
            부상에 주의하면서 안전하게 훈련합니다.
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
