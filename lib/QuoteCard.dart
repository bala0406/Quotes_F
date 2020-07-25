import 'package:flutter/material.dart';
import 'Quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteCard({this.quote,this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amberAccent[100],
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20,
                color: Colors.indigo[900],
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              quote.author,
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 12,
                color: Colors.indigo[900],
                fontWeight: FontWeight.bold,
              ),
            ),

            FlatButton.icon(
              onPressed:delete,
              icon: Icon(Icons.delete),
              label: Text("delete"),

            ),
              
            
          ],
        ),
      ),
    );
  }
}
