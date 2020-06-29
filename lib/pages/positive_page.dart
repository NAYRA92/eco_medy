import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class Positive extends StatefulWidget {
  @override
  _PositiveState createState() => _PositiveState();
}

class _PositiveState extends State<Positive> {
  bool checkValue = false;
  bool checkValue2 = false;
  bool checkValue3 = false;
  bool checkValue4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 300,
            width: 400,
            color: Colors.lightBlueAccent,
            child: Text(
              "To Do:",
              style: GoogleFonts.pangolin(
                fontSize: 48,
              ),
            ),
          ),
          Container(
            height: 400,
            child: ListView(
              children: <Widget>[
                kPositiveCard(
                  text: "1. Say something positive to someone 📞!",
                  checkBox: Checkbox(
                      value: checkValue,
                      onChanged: (bool value) {
                        setState(() {
                          checkValue = value;
                        });
                      }),
                ),
                kPositiveCard(
                  text: "2. Hug someone ❤!",
                  checkBox: Checkbox(
                      value: checkValue2,
                      onChanged: (bool value) {
                        setState(() {
                          checkValue2 = value;
                        });
                      }),
                ),
                kPositiveCard(
                  text: "3. Write three things you are greatful for 📝!",
                  checkBox: Checkbox(
                      value: checkValue3,
                      onChanged: (bool value) {
                        setState(() {
                          checkValue3 = value;
                        });
                      }),
                ),
                kPositiveCard(
                  text: "4. SmiLe 😊!",
                  checkBox: Checkbox(
                      value: checkValue4,
                      onChanged: (bool value) {
                        setState(() {
                          checkValue4 = value;
                        });
                      }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
