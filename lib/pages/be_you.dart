import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:share/share.dart';

import '../constants.dart';

String texty, subject;

final myController = TextEditingController();

class BeYou extends StatefulWidget {
  @override
  _BeYouState createState() => _BeYouState();
}

class _BeYouState extends State<BeYou> {
  Future<void> share() async {
    await FlutterShare.share(
        text: myController.text, chooserTitle: 'Share your thoughts via:');
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Share some positive thoughts: ",
                style: kSmallText(),
              ),
              TextField(
                controller: myController,
              ),
              FlatButton(
                child: Text('Share'),
                onPressed: share,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: share,
          tooltip: 'Share',
          child: Icon(Icons.share),
        ),
      ),
    );
  }
}
