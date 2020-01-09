import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ask Me Anything',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BallPage(),
    );
  }
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int _ballNumber = 1;

  void _generateRandNum() {
    setState(() {
      _ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
      ),
      body: Container(
        child: Center(
          child: FlatButton(
            child: Image.asset('images/ball$_ballNumber.png'),
            onPressed: () => _generateRandNum(),
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
