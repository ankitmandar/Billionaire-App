import 'package:billionaire_app/balance_view.dart';
import 'package:billionaire_app/buttoms/add_money_buttom.dart';
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
    //Obtain shared preferences.
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setDouble('balance', balance);
  }

  @override
  void initState() {
    loadBalance();
    super.initState();
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
            BalanceView(balance: balance),
            AddMoneyButtom(addMoneyFunction: addMoney),
          ],
        ),
      ),
    );
  }
}
