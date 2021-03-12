import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // empty Map data, to store data from loading widget
  Map data = {};

  @override
  Widget build(BuildContext context) {
    // receiving data from location route
    data = ModalRoute.of(context).settings.arguments;
    // printing out the route data
    print(data);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              icon: Icon(Icons.edit_location),
              label: Text('Choose Location'),
            ),
          ],
        ),
      ),
    );
  }
}
