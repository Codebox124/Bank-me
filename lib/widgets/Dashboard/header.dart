import 'package:flutter/material.dart';
import 'package:bank_me/widgets/Dashboard/profile.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Profile()));
          },
          child: CircleAvatar(
            child: Image.asset("assets/img/profile.png"),
          ),
        ),
      ],
    );
  }
}
