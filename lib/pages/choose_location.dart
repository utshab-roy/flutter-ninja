import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  // this function calls at the begining of the building widget
  @override
  void initState() {
    super.initState();
    print('Inside the initState function');
  }

  // this function calls everytime the state changes
  @override
  Widget build(BuildContext context) {
    print('Inside the build function');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: RaisedButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        child: Text('Counter value $counter'),
      ),
    );
  }
}
