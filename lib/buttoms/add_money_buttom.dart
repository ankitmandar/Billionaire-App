import 'package:flutter/material.dart';

class AddMoneyButtom extends StatelessWidget {
  void Function() addMoneyFunction;
  AddMoneyButtom({super.key, required this.addMoneyFunction});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red[700],
          minimumSize: Size(double.infinity, double.infinity),
        ),
        onPressed: addMoneyFunction,
        child: Text('Add Money'),
      ),
    );
  }
}
