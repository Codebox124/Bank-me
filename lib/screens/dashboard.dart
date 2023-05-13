import 'package:bank_me/widgets/Dashboard/balance.dart';
import 'package:bank_me/widgets/Dashboard/header.dart';
import 'package:bank_me/widgets/Dashboard/savings_option.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/Dashboard/add_money.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    // final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
        child: Column(
          children: [
           Header(),
           Balance(),
            AddMoney(),
            SavingsOption()

          
          ],
        ),
      ),
    );
  }
}
