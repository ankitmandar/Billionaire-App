import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void afunction() {
    print('Buttom is pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Billionaire App'), centerTitle: true),
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.blueGrey[700],
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Balance'),
            ElevatedButton(onPressed: afunction, child: Text('Buttom ')),
          ],
        ),
      ),
    );
  }
}
