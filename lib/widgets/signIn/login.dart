import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:bank_me/screens/dashboard.dart';
import 'package:bank_me/screens/get_started_page.dart';
import 'package:bank_me/screens/sign_up.dart';

class LogInWidget extends StatefulWidget {
  const LogInWidget({super.key});

  @override
  State<LogInWidget> createState() => _LogInWidgetState();
}

class _LogInWidgetState extends State<LogInWidget> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Future Signin() async {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Dashboard();
            } 
            else {
              return Container(
                width: double.infinity,
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 60, left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => getStartedPage(),
                                ),
                              );
                            },
                            icon: Icon(Icons.clear)),
                        Padding(
                          padding: const EdgeInsets.only(top: 40, bottom: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sign into your\nAcount",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Log into your BankMe account.",
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                  "Email Address",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                child: TextFormField(
                                  controller: emailController,
                                  keyboardType: TextInputType.emailAddress,
                                  keyboardAppearance: Brightness.light,
                                  decoration: InputDecoration(
                                      hintText: "example@gmail.com",
                                      filled: true,
                                      fillColor: Color.fromARGB(31, 80, 79, 79),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                  "Password",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                child: TextFormField(
                                  controller: passwordController,
                                  obscureText: true,
                                  keyboardAppearance: Brightness.light,
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      filled: true,
                                      fillColor: Color.fromARGB(31, 80, 79, 79),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Have you forgotten your password? "),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: Text(
                                        "Click here to recover it",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 150,
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: Signin,
                                      child: Container(
                                        child: Center(
                                            child: Text(
                                          "LOG IN",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        )),
                                        height: 55,
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 109, 120, 129),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: Row(
                                        children: [
                                          const Text(
                                              "Do you not have a BankMe account?"),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          SignUp()));
                                            },
                                            child: Text(
                                              "  Sign up here",
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontWeight:
                                                      FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
          }),
    );
  }
}
