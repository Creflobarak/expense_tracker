import 'package:flutter/material.dart';
import './transaction.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final List<Transaction> transactions = [
    Transaction(
      id: 0001,
      title: 'Shoes',
      amount: 2500,
      date: DateTime.now(),
    ),
    Transaction(
      id: 0002,
      title: 'Sunglasses',
      amount: 500,
      date: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Column(
          children: <Widget>[
            const Card(
              color: Colors.blue,
              elevation: 5,
              child: SizedBox(
                child: Text('CHART!'),
              ),
            ),
            Column(
              children: transactions.map(
                (transaction) {
                  return Card(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 20,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),
                          padding: EdgeInsets.all(10),
                          child: Text(
                            transaction.amount.toString(),
                          ), //.toString converts it to a string
                        ),
                        Column(
                          children: <Widget>[
                            Text(transaction.title),
                            Text(
                              transaction.date.toString(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ).toList(),
            )
          ],
        ),
      ),
    );
  }
}
