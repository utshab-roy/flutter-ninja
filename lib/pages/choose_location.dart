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
    getData();

    print('This will print, cause it will not wait for getData, out of scoope');
  }

  void getData() async {
    //simulate Network request for a username
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'Jhon';
    });

    //simulate Network request for a boi
    String bio = await Future.delayed(Duration(seconds: 3), () {
      return 'Singer, Dancer';
    });

    print('$username - $bio');
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
