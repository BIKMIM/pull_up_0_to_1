import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pull_up_0_to_1/Screens/assist.dart';

import 'Screens/assist.dart';
import 'Screens/grip.dart';
import 'Screens/invertedrow.dart';
import 'Screens/negative.dart';
import 'Screens/weight.dart';
import 'Screens/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Welcome0(),
        '/grip': (context) => Grip(),
        '/weight': (context) => Weight(),
        '/assist': (context) => Assist(),
        '/invertedrow': (context) => InvertedRow(),
        '/negative': (context) => Negative(),
      },
    );
  }
}
