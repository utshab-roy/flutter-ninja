import 'package:flutter/material.dart';
import 'quote.dart';

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
  List<Quote> quotes = [
    Quote(author: 'oscar', text: 'Orcar give a quote'),
    Quote(author: 'adam', text: 'this is Adams quote'),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        // children: quotes.map((quote) {
        //   return Text(quote);
        // }).toList(),
        //in one line using arrow function
        children: quotes
            .map((quote) => Text('${quote.author} - ${quote.text}'))
            .toList(),
      ),
    );
  }
}
