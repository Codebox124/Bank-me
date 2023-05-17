import 'package:flutter/material.dart';

import '../widgets/Dashboard/add_money.dart';
import '../widgets/Dashboard/balance.dart';
import '../widgets/Dashboard/header.dart';
import '../widgets/Dashboard/savings_option.dart';

class Dash extends StatefulWidget {
  const Dash({super.key});

  @override
  State<Dash> createState() => _DashState();
}

class _DashState extends State<Dash> {
  @override
  Widget build(BuildContext context) {
    return   SingleChildScrollView(
      child: Container(
        height: 700,
        child: Column(
                  children: [
                    Header(),
                    Balance(),
                    AddMoney(),
                    SavingsOption(),
                  ],
                ),
      ),
    );
  }
}