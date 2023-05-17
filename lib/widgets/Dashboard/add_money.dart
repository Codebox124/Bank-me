import 'package:bank_me/screens/save_screen.dart';
import 'package:bank_me/widgets/Dashboard/save.dart';
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
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:(context) => SaveMoney() ));
            },
            child: Container(
                height: 70,
                decoration: BoxDecoration(
                    color: Color.fromARGB(85, 66, 223, 215),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 5, bottom: 5, right: 20, left: 20),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/img/Group.png",
                        width: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "Add money",
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                      )
                    ],
                  ),
                )),
          ),
          Container(
              height: 70,
              decoration: BoxDecoration(
                  color: Color.fromARGB(96, 236, 183, 103),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 5, bottom: 5, right: 20, left: 20),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/img/money (2) 1.png",
                      width: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "Withdraw",
                        style: TextStyle(fontSize: 15, color: Colors.black54),
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
