import 'package:bank_me/screens/get_started_page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 80),
          child: PageView(
            controller: controller,
            children: [
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                       
                          children: [
                            Image.asset("assets/img/onscreen_1.png", width: 350),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Save money",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "We help you meet your savings target monthly\nand our emergency plans enable you save for\nmultiple purposes",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black45,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/img/onscreen_3.png"),
                        Text(
                          "Invest your money",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Get access to risk free investments that will\nmultiply your income and pay high returns in\nfew months",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black45,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/img/onscreen_2.png"),
                        Text(
                          "Withdraw your money",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "With just your phone number, you can withdraw\nyour funds at any point in time from any BankMe\nagent close to you.",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black45,
                          ),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => getStartedPage()),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 50,
                              width: 100,
                              child: Center(
                                child: Text(
                                  "Get Started",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: (() {
                controller.jumpToPage(2);
              }),
              child: Text("Skip"),
            ),
            Center(
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
              ),
            ),
            TextButton(
              onPressed: (() {
                controller.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut);
              }),
              child: Text("Next"),
            )
          ],
        ),
      ),
    );
  }
}
