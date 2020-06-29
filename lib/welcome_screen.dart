import 'package:eco_medy/pages/choices_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              text: "Eco Medy ",
              style: TextStyle(
                fontSize: 35.0,
                color: Colors.black,
                fontFamily: 'Pangolin',
              ),
              children: [
                TextSpan(
                  text: "Just Be!",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: ScaleAnimatedTextKit(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Choices()));
                },
                text: [
                  "CLIKE ME!",
                  "CLIKE HERE!",
                  "Yeah, CLIKE HERE!",
                ],
                textStyle: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 18.0,
                  fontFamily: 'Pangolin',
                ),
                textAlign: TextAlign.start,
                alignment: AlignmentDirectional.topStart),
          ),
        ],
      ),
    );
  }
}
