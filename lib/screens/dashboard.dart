import 'package:bank_me/screens/save_screen.dart';

import 'package:flutter/material.dart';
import '../pages/pages.dart';
import '../widgets/Dashboard/add_money.dart';
import '../widgets/Dashboard/balance.dart';
import '../widgets/Dashboard/header.dart';
import '../widgets/Dashboard/savings_option.dart';

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
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        selectedIndex: _currentIndex,
        backgroundColor: Colors.white,
        height: 90,
        destinations: [
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
        onDestinationSelected: (index) {
          setState(() {
            _currentIndex = index;
            if (index == 0) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Dashboard()));
            } else if (index == 1) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SaveScreen()));
            }
          });
        },
      ),
      backgroundColor: Color.fromARGB(255, 252, 252, 252),
      body: Padding(
        padding: EdgeInsets.only(
          top: 70,
          left: 20,
          right: 20,
        ),
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
