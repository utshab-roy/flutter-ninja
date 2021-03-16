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
    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
    // printing out the route data
    print(data);

    //set background
    String bgImage = data['isDaytime'] ? 'day.jpg' : 'night.jpg';
    Color bgColor = data['isDaytime'] ? Colors.blue : Colors.indigo[900];

    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/$bgImage'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
          child: SafeArea(
            child: Column(
              children: [
                TextButton.icon(
                  onPressed: () async {
                    dynamic results =
                        await Navigator.pushNamed(context, '/location');
                    //updating the data with new value
                    setState(() {
                      data = {
                        'time': results['time'],
                        'location': results['location'],
                        'isDaytime': results['isDaytime'],
                        'flag': results['flag'],
                      };
                    });
                  },
                  icon: Icon(
                    Icons.edit_location,
                    color: Colors.red[400],
                    size: 60.0,
                  ),
                  label: Text(
                    'Choose Location',
                    style: TextStyle(
                      fontSize: 28.0,
                      color: Colors.red[400],
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data['location'],
                      style: TextStyle(
                        fontSize: 28.0,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Text(
                  data['time'],
                  style: TextStyle(
                    fontSize: 66.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
