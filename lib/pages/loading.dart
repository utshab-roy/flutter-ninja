import 'package:flutter/material.dart';
import 'package:flutter_ninja/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = 'loading';

// this function calls at the begining of the building widget
  @override
  void initState() {
    super.initState();

    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Text(time),
      ),
    );
  }

  void setupWorldTime() async {
    WorldTime instance =
        WorldTime(location: 'Dhaka', flag: 'bangladesh.png', url: 'Asia/Dhaka');

    await instance.getTime();

    // passing data from this route to /home route using arguments
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
    });
  }
}
