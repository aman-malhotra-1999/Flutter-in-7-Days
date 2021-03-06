import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String str = "Hey my name is Aman";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              Image.network("<link to the image online>"),
              Chip(
                label: Text(
                  str,
                  style: TextStyle(
                      color: Colors.teal, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: OutlineButton(
                  onPressed: () {
                    str = "You just pressed the button";
                    setState(() {});
                  },
                  child: Text("Press Me"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
