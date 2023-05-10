import 'package:flutter/material.dart';
class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return   Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello Roqeeb",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Good morning, remember to save today",
                      style: TextStyle(
                        fontSize: 13,
                        
                      ),
                    )
                  ],
                ),
                CircleAvatar(child: Image.asset("assets/img/profile.png"))
              ],
            );
  }
}