import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:eco_medy/pages/inspire_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//bool checkValue = false;

TextStyle kSmallText() {
  return GoogleFonts.pangolin(
    fontSize: 21.0,
  );
}

Card kPositiveCard({String text, Function setState, Checkbox checkBox}) {
  return Card(
    child: ListTile(
      title: Text(text, style: kSmallText()),
      trailing: checkBox,
    ),
  );
}

Container kButtons({String text, Function tapping}) {
  return Container(
    alignment: Alignment.center,
    margin: EdgeInsets.only(top: 30),
    height: 70,
    child: ColorizeAnimatedTextKit(
      onTap: tapping,
      text: [text],
      textAlign: TextAlign.center,
      textStyle:
          GoogleFonts.pangolin(fontSize: 28.0, color: Colors.yellow[900]),
      colors: [
        Colors.white,
        Colors.lightBlue,
        Colors.yellow,
        Colors.yellow[900],
      ],
    ),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(color: Colors.black87, blurRadius: 2.0, spreadRadius: 0.8),
      ],
      color: Colors.lightBlueAccent,
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
    ),
  );
}

Container kQuotesBox({String text, String author}) {
  return Container(
    width: 350,
    height: 200,
    margin: EdgeInsets.only(top: 25, bottom: 5.0),
    decoration: BoxDecoration(
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(20.0)),
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 2),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.pangolin(
              fontSize: 26.0,
              backgroundColor: Colors.white,
            ),
          ),
        ),
        Container(
          alignment: Alignment.bottomRight,
          margin: EdgeInsets.only(right: 5),
          child: Text(
            "- " + author,
            style: GoogleFonts.sofia(
              fontSize: 14.0,
            ),
          ),
        )
      ],
    ),
  );
}
