import 'package:flutter/material.dart';
import 'package:flutter_ninja/pages/home.dart';
import 'package:flutter_ninja/pages/loading.dart';
import 'package:flutter_ninja/pages/choose_location.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    },
  ));
}
