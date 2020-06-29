import 'package:eco_medy/pages/be_you.dart';
import 'package:eco_medy/pages/choices_screen.dart';
import 'package:eco_medy/pages/inspire_page.dart';
import 'package:eco_medy/pages/positive_page.dart';
import 'package:eco_medy/pages/relax_page.dart';
import 'package:eco_medy/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/welcome',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/welcome': (context) => WelcomeScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/choices': (context) => Choices(),
        '/inspire': (context) => Inspire(),
        '/relax': (context) => Relax(),
        '/positive': (context) => Positive(),
        '/beYou': (context) => BeYou(),
      },
    );
  }
}
