import 'package:flutter/material.dart';

import './new_transaction.dart';
import './transactionList.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 'p1',
      title: 'banana pancakes',
      amount: 6.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'p2',
      title: 'blueberry pancakes',
      amount: 4.99,
      date: DateTime.now(),
    ),
  ];

  void _addNew(String title, double amount) {
    final newTransaction = Transaction(
      title: title,
      amount: amount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );
    setState(() {
      _userTransactions.add(newTransaction);
    });
 
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNew),
        TransactionList(_userTransactions),
      ],
    );
  }
}
