import 'package:flutter/material.dart';

import '../models/transaction.dart';
import './new_transaction.dart';
import './transaction_list.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({super.key});

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [
    Transaction(
      id: "t1",
      title: "New Shoes",
      amount: 999,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "Weekly Groceries",
      amount: 500,
      date: DateTime.now(),
    ),
  ];

  void _newTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        id: 'deep${DateTime.now()}',
        title: txTitle,
        amount: txAmount,
        date: DateTime.now());
    setState(() => _userTransaction.add(newTx));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(addTx: _newTransaction),
        TransactionList(transactions: _userTransaction),
      ],
    );
  }
}
