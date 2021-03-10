import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Container(
        // padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
        padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
        margin: EdgeInsets.all(30.0),
        color: Colors.grey[400],
        child: Text('Container Area'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.pink[400],
      ),
    );
  }
}
