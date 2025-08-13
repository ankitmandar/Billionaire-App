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
            Expanded(
              flex: 9,
              child: Column(
                spacing: 16,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Balance Part'), Text('0')],
              ),
            ),

            Expanded(
              flex: 1,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[700],
                  minimumSize: Size(double.infinity, double.infinity),
                ),
                onPressed: afunction,
                child: Text('Add Money'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
