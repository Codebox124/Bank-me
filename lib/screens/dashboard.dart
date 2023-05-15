import 'package:bank_me/widgets/Dashboard/balance.dart';
import 'package:bank_me/widgets/Dashboard/header.dart';
import 'package:bank_me/widgets/Dashboard/savings_option.dart';
import 'package:flutter/material.dart';
import '../widgets/Dashboard/add_money.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) {
          _currentIndex = index;
        },
        backgroundColor: Colors.white,
        height: 90,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.pie_chart),
            label: "Save",
          ),
          NavigationDestination(
            icon: Icon(Icons.badge_sharp),
            label: "Portfolio",
          ),
          NavigationDestination(
            icon: Icon(Icons.wallet_giftcard_rounded),
            label: "Rewards",
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: "Profile",
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
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
