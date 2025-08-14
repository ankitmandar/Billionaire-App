import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double balance = 0;

  void addMoney() async {
    setState(() {
      balance = balance + 500;
    });
    print('Balance added');

    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setDouble('balance', balance);
  }

  void loadBalance() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      balance = prefs.getDouble('balance') ?? 0;
    });
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
                children: [
                  Text('Balance Part'),
                  Text('$balance'),
                  ElevatedButton(
                    onPressed: loadBalance,
                    child: Text('Add Money'),
                  ),
                ],
              ),
            ),

            Expanded(
              flex: 1,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[700],
                  minimumSize: Size(double.infinity, double.infinity),
                ),
                onPressed: addMoney,
                child: Text('Add Money'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
