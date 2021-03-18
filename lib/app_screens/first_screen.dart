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
          color: Colors.lightBlueAccent,
          child: Center(
            child: Text("First Screen of the App"),
          ),
        ),
      ),
    );
  }
}
