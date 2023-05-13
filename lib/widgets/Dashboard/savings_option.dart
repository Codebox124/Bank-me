import 'package:flutter/material.dart';

class SavingsOption extends StatefulWidget {
  const SavingsOption({super.key});

  @override
  State<SavingsOption> createState() => _SavingsOptionState();
}

class _SavingsOptionState extends State<SavingsOption> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text(
                "Get your money working for you",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 220,
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                  color: Colors.blue,

                )),
                height: 80,
                child: Center(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Color.fromARGB(94, 202, 237, 240),
                      child: Image.asset(
                          "assets/img/wallet-filled-money-tool 1.png",
                          width: 24),
                    ),
                    title: Text('Save for an emergency'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
               Padding(
                 padding: const EdgeInsets.only(top:20),
                 child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                    color: Colors.blue,

                  )),
                  height: 80,
                  child: Center(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color.fromARGB(94, 202, 237, 240),
                        child: Image.asset(
                            "assets/img/Group (1).png",
                            width: 24),
                      ),
                      title: Text('Invest your money'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
              ),
               ),
            ],
          ),
        )
      ],
    );
  }
}
