import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';

class WiseCard extends StatelessWidget {

  final Kwuotes quote;
  final Function delete;
  WiseCard({this.quote,this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Text(
                quote.author,
                style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.grey[800]
                ),
              ),
            ),
            SizedBox(height: 10.0),
            FlatButton.icon(
              label: Text('delete'),
              icon: Icon(Icons.delete),
              onPressed: delete,
            )
          ],
        ),
      ),
    );
  }
}