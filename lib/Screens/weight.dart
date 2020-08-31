import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Weight extends StatefulWidget {
  @override
  _WeightState createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
          title: Text(
            '체중 관리 (weight management)',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          backgroundColor: Colors.grey[900]),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20.0,
          ),
          Text(
            '체중과 풀업의 관계',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 40.0),
          Text(
            '''
            체중이 많이 나가는 사람은 체중부터 줄이는 것이
            중요합니다.
            
            체중이 무거운 보디빌더들도 풀업을 10개이상
            못하는 것이 보통일 정도로
            체중이 미치는 영향이 큰 운동입니다.
                        
            과체중에서 풀업이 불가능하지는 않지만
            부상의 위험이 높고, 상대적으로
            풀업의 난이도가 상승합니다.
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
                  Navigator.pushNamed(context, '/assist');
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
