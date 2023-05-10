import 'package:bank_me/screens/sign_in.dart';
import 'package:bank_me/screens/sign_up.dart';
import 'package:flutter/material.dart';

class getStartedPage extends StatefulWidget {
  const getStartedPage({super.key});

  @override
  State<getStartedPage> createState() => _getStartedPageState();
}

class _getStartedPageState extends State<getStartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 200,
              ),
              Column(
                children: [
                  Text(
                    "Welcome to BankMe",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "The bank for everyone.",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Container(
                        width: double.infinity,
                        child: Center(
                            child: Text(
                          "CREATE YOUR FREE ACCOUNT",
                          style: TextStyle(color: Colors.white),
                        )),
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: GestureDetector(
                       onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignIn()));
                      },
                      child: Container(
                        width: double.infinity,
                        child: Center(
                            child: Text(
                          "LOG INTO YOUR ACCOUNT",
                          style: TextStyle(),
                        )),
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue, width: 1.5)),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
