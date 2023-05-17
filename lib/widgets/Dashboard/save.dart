import 'package:bank_me/screens/dashboard.dart';
import 'package:flutter/material.dart';

class SaveMoney extends StatefulWidget {
  const SaveMoney({super.key});

  @override
  State<SaveMoney> createState() => _SaveMoneyState();
}

class _SaveMoneyState extends State<SaveMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Dashboard()));
              },
              child: Icon(Icons.clear),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "Let’s help you save",
                      style: TextStyle(fontSize: 25, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Enter the amount you want to save",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                fillColor: Colors.white,
                hintText: '₦0.00',
                label: Text("Amount")

              ),
            )
          ],
        ),
      ),
    );
  }
}
