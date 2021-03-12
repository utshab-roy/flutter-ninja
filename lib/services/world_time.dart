import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:intl/intl.dart';

class WorldTime {
  String location; //location name for the UI
  String time; //the time in that location
  String flag; //url to an assets flag icon
  String url; //location url for api endpoint

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    // try and catch can be used for error handling
    try {
      print('inside try');
    } catch (e) {
      print('Error is :');
    }

    var apiEndPoint = Uri.https('worldtimeapi.org', '/api/timezone/$url');

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(apiEndPoint);
    if (response.statusCode == 200) {
      var data = convert.jsonDecode(response.body);

      //get propaties from data
      String datetime = data['utc_datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      //create DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      //converting DateTime object to String
      //set time proparty
      // time = now.toString();
      time = DateFormat.jm().format(now);
    } else {
      time = 'Could not load data';
      print('Request failed with status: ${response.statusCode}.');
    }
  }
}