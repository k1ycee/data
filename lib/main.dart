import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home:Quotes(),
));

class Quotes extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<Kwuotes> quotes = [
   Kwuotes(author: 'Tech',text: 'PCs went by the name Electronic Brains in the 1950s'),
    Kwuotes(author: 'Tech',text: '28% of IT professionals hide their career from friends and family to get out of giving free tech support(incase you did not know about it)'),
    Kwuotes(author: 'Tech',text: 'Computer programming is currently one of the fastest growing occupations related to technology(this is an arguement but well i dont have time)'),
    Kwuotes(author: 'Tech',text:'The QWERTY keyboard was designed to slow you down. If you want to type faster, try the Dvorak Keyboard'),
    Kwuotes(author: 'Tech', text:  'Currently, the world’s largest hard drive is a 60TB SSD')
  ];

  Widget quoteTemp (quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0 ),
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
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Wise Quoutes'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemp(quote)).toList(),
      ),
    );
  }
}
