import 'package:flutter/material.dart';

class Balance extends StatefulWidget {
  const Balance({super.key});

  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.blue.shade700,
            borderRadius: BorderRadius.circular(10)),
        child: const Padding(
          padding: EdgeInsets.only(top:50),
          child: Column(
          
            children: [
          Padding(
            padding: EdgeInsets.only(bottom:20),
            child: Text(
              "Total Savings",
              style: TextStyle(
                  color: Colors.white60,
               
                  fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            "₦15,000.10",
            style: TextStyle(
                color: Colors.white,
                fontSize: 37,
                fontWeight: FontWeight.bold),
          ),
            ],
          ),
        ),
      ),
    );
  }
}
