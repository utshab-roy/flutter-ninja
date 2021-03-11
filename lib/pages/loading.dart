import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
// this function calls at the begining of the building widget
  @override
  void initState() {
    super.initState();
    getTime();
  }

  void getTime() async {
    var url = Uri.https(
        'worldtimeapi.org', '/api/timezone/Asia/Dhaka', {'q': '{http}'});

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var data = convert.jsonDecode(response.body);

      //get propaties from data
      String datetime = data['utc_datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      //create DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      //printing the actual value
      print(now);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading Screen'),
    );
  }
}
