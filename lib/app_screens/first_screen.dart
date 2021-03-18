import 'dart:math';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My New App",
      home: Scaffold(
        appBar: AppBar(
          title: Text('First App'),
        ),
        body: Material(
          color: Colors.lightBlueAccent[700],
          child: Center(
            child: Text(
              generateLuckyNumber(),
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }

  String generateLuckyNumber() {
    var random = Random();
    int luckyNumber = random.nextInt(10);
    return "Your lucky number is : $luckyNumber";
  }
}
