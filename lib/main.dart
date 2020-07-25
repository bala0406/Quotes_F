import 'package:flutter/material.dart';
import 'Quote.dart';
import 'QuoteCard.dart';

void main() => runApp(MaterialApp(
      home: ListsApp(),
    ));

class ListsApp extends StatefulWidget {
  @override
  _ListsAppState createState() => _ListsAppState();
}

class _ListsAppState extends State<ListsApp> {
  List<Quote> quotes = [
    Quote(
        text:
            "Sometime we can feel a bit dull in the morning and we need to produce our own sunshine energy.",
        author: "-A"),
    Quote(
        text:
            "Other times we come downstairs feeling sunny already. Those are great days!",
        author: "-B"),
    Quote(
        text:
            "Whether you’re feeling a little blue, or you’re fired up ready to have the best day ever…",
        author: "-C")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("lists"),
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((quote) =>new QuoteCard(
          quote: quote,
          delete: (){
            setState(() {
             quotes.remove(quote); 
            });
          }
          )
          ).toList(),
      ),
    );
  }
}

