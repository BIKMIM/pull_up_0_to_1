import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Grip extends StatefulWidget {
  @override
  _GripState createState() => _GripState();
}

class _GripState extends State<Grip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
          title: Text(
            '그립법 (How to grip)',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          backgroundColor: Colors.grey[900]),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Center(
                  child: Image(
                    image: AssetImage('assets/palm_grip.png'),
                  ),
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Image(
                    image: AssetImage('assets/finger_grip.png'),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Icon(
                  Icons.thumb_down,
                  color: Colors.red,
                  size: 50.0,
                ),
              ),
              Expanded(
                child: Icon(
                  Icons.thumb_up,
                  color: Colors.blue,
                  size: 50.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            '그립 방법',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 40.0),
          Text(
            '''
            손바닥의 중심에 철봉을 놓는 팜 그립은
            굳은살이 생기기 쉽습니다.
            
            손바닥과 손가락이 만나는 지점에 철봉을 놓는
            핑거그립은 굳은살이 상대적으로 덜 생깁니다.
            
            전완근 및 악력이 부족한 상태에서는
            피부의 마찰력으로 체중을 버티기 때문에
            굳은살이 생기기 쉽습니다.
            통증이 심할 경우 장갑 착용을 권장합니다.
            ''',
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                  Navigator.pushNamed(context, '/weight');
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
