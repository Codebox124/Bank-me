import 'package:flutter/material.dart';

class AddMoney extends StatefulWidget {
  const AddMoney({Key? key}) : super(key: key);

  @override
  State<AddMoney> createState() => _AddMoneyState();
}

class _AddMoneyState extends State<AddMoney> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              height: 70,
              decoration: BoxDecoration(
                  color: Color.fromARGB(85, 66, 223, 215),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Image.asset("assets/img/Group.png"),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text("Add money",
                      style: TextStyle(fontSize: 17, color: Colors.black54),
                      ),
                    )
                  ],
                ),
              )),
          Container(
              height: 70,
              decoration: BoxDecoration(
                  color: Color.fromARGB(96, 236, 183, 103),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Image.asset("assets/img/money (2) 1.png"),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "Withdraw",
                        style: TextStyle(fontSize: 17, color: Colors.black54),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
