import 'package:flutter/material.dart';

import 'dashboard.dart';

class SaveScreen extends StatefulWidget {
  const SaveScreen({super.key});

  @override
  State<SaveScreen> createState() => _SaveScreenState();
}

class _SaveScreenState extends State<SaveScreen> {
  List<SaveList> lists = [
    const SaveList(
        icon: Icon(Icons.history_rounded),
        title: "Instant Withdraw",
        subtitle: "Enjoy daily return and withdraw anytime"),
    const SaveList(
        icon: Icon(Icons.notifications),
        title: "Fixed Withdraw",
        subtitle: "Set 7-100 days saving\n plan with as low as 1000 "),
    const SaveList(
        icon: Icon(Icons.history_rounded),
        title: "Instant Withdraw",
        subtitle: "Enjoy daily return and withdraw anytime"),
  ];
  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 600,
        child: Column(
          children: [
            ListView.separated(
              itemCount: 3,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 5.0,
                );
              },
              itemBuilder: (BuildContext context, int index) {
                return saveList(list: lists[index]);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        selectedIndex: _currentIndex,
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
    );
  }
}

Widget saveList({
  required SaveList list,
}) =>
    // Padding(
    //   padding: const EdgeInsets.only(top: 40),
    //   child: Container(
    //     width: double.infinity,
    //     height: 200,
    //     decoration: BoxDecoration(
    //       color: Color.fromARGB(183, 42, 78, 240),
    //       borderRadius: BorderRadius.circular(20),
    //     ),
    //   ),
    // );

class SaveList {
  final Icon icon;
  final String title;
  final String subtitle;

  const SaveList(
      {required this.title, required this.icon, required this.subtitle});
}
