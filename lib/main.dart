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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        children: <Widget>[
          Text('Hello, world'),
          FlatButton(
            onPressed: () {},
            color: Colors.amber,
            child: Text('Click Me'),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            child: Text('Inside Container'),
            color: Colors.cyan,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.pink[400],
      ),
    );
  }
}
