import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<String> quotes = [
    'Praesent ac massa at ligula',
    'Sed cursus turpis vitae tortor',
    'Phasellus blandit leo ut odi2o',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        // children: quotes.map((quote) {
        //   return Text(quote);
        // }).toList(),
        //in one line using arrow function
        children: quotes.map((quete) => Text(quete)).toList(),
      ),
    );
  }
}
