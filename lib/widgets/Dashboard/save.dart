import 'package:bank_me/screens/dashboard.dart';
import 'package:flutter/material.dart';

class SaveMoney extends StatefulWidget {
  const SaveMoney({super.key});

  @override
  State<SaveMoney> createState() => _SaveMoneyState();
}

class _SaveMoneyState extends State<SaveMoney> {
    final amountController = TextEditingController();

     @override
  void dispose() {
    amountController.dispose();


    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: 700,
          child: Padding(
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
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Amount",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller:amountController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 243, 242, 242),
                      filled: true,
                      prefixIcon: Icon(Icons.wallet_rounded),
                      hintText: '₦0.00',
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      labelStyle: TextStyle(color: Colors.black)),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Phone Number",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 243, 242, 242),
                    filled: true,
                    prefixIcon: Icon(Icons.phone),
                    hintText: '080 3490 0904',
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Savings Description",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 243, 242, 242),
                    filled: true,
                    prefixIcon: Icon(Icons.interpreter_mode),
                    hintText: 'Iphone Savings',
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        
                      },
                      child: Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromARGB(255, 18, 126, 214),
                        ),
                        child: Center(
                            child: Text(
                          "Save",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
