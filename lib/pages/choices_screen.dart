import 'package:flutter/material.dart';
import '../constants.dart';

class Choices extends StatefulWidget {
  @override
  _ChoicesState createState() => _ChoicesState();
}

class _ChoicesState extends State<Choices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            kButtons(
                text: "Be Inspired",
                tapping: () {
                  Navigator.pushNamed(context, "/inspire");
                }),
            kButtons(
                text: "Be Relaxed",
                tapping: () {
                  Navigator.pushNamed(context, "/relax");
                }),
            kButtons(
                text: "Be Positive",
                tapping: () {
                  Navigator.pushNamed(context, "/positive");
                }),
            kButtons(
                text: "Be YOU!",
                tapping: () {
                  Navigator.pushNamed(context, "/beYou");
                }),
//            Image(
//              image: AssetImage("images/sunny.png"),
//            ),
          ],
        ),
      ),
    );
  }
}
