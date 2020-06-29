import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:webview_flutter/webview_flutter.dart';

import '../constants.dart';

Future<Album> fetchAlbum() async {
  final response =
      await http.get('https://jsonplaceholder.typicode.com/albums/2');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

final Set<JavascriptChannel> jsChannels = [
  JavascriptChannel(
      name: 'Print',
      onMessageReceived: (JavascriptMessage message) {
        print(message.message);
      }),
].toSet();

class Album {
  final int userId;
  final int id;
  final String title;

  Album({this.userId, this.id, this.title});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}

String selectedUrl = 'https://flutter.io';

class Inspire extends StatefulWidget {
  Inspire({Key key}) : super(key: key);

  @override
  _InspireState createState() => _InspireState();
}

class _InspireState extends State<Inspire> {
  Future<Album> futureAlbum;
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              kQuotesBox(
                  text:
                      "People often say that motivation doesn’t last. Well,neither does bathing – that’s why we recommend it daily!",
                  author: "Zig Ziglar"),
              kQuotesBox(
                  text:
                      "I think it’s very healthy to spend time alone. You need to know how to be alone and not be defined by another person.",
                  author: "Oscar Wilde"),
              kQuotesBox(
                  text:
                      "Be thankful for what you have; you’ll end up having more. If you concentrate on what you don’t have, you will never, ever have enough.",
                  author: "Oprah Winfrey"),
              kQuotesBox(
                  text:
                      "No matter what happens in life, be good to people. Being good to people is a wonderful legacy to leave behind.",
                  author: "Taylor Swift"),
            ],
          ),
        ),
      ),
    );
  }
}
