import 'package:flutter/material.dart';
import 'package:flutter_ninja/app_screens/home.dart';

void main() => runApp(MaterialApp(
      title: "Exploring UI Widget",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: getListView(),
      ),
    ));

Widget getListView() {
  return ListView(
    children: [
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text('Landscape'),
        subtitle: Text('Beautiful view !'),
        trailing: Icon(Icons.wb_sunny),
        onTap: () => print('tap on list tile'),
      ),
      ListTile(
        leading: Icon(Icons.desktop_windows),
        title: Text('Windows'),
      ),
    ],
  );
}
