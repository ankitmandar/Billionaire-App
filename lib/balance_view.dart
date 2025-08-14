import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BalanceView extends StatelessWidget {
  double balance = 0;
  BalanceView({super.key, required this.balance});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 9,
      child: Column(
        spacing: 16,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Balance Part'),
          Text(
            '\$ ${NumberFormat.simpleCurrency(name: '').format(balance)}',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
