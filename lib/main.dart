import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() =>
  runApp(MaterialApp(
    home: QuoteList(),
  ));

class QuoteList extends StatefulWidget {



  @override
  State<QuoteList> createState() => _QuoteListState();
 }

class _QuoteListState extends State<QuoteList> {
  List<Quote > quotes=[
   Quote(author: 'Oscar Wilde ', text:'Be yourself,everyone else has already taken'),
    Quote(author: 'Oscar Wilde ', text:'I have nothing to declare except my genious'),
    Quote(author: 'Oscar Wilde ', text:'The truth is rarely pure and never simple')
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent.shade100,
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent.shade100,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote :quote,
          delete:() {
              setState(() {
                quotes.remove(quote);
              });
          }

        )).toList(),


      ),
    );
  }
}




