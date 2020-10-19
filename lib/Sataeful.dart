import 'dart:ui';

import 'package:flutter/material.dart';

class MyAppState extends StatefulWidget {
  @override
  _MyAppStateState createState() => _MyAppStateState();
}

class _MyAppStateState extends State<MyAppState> {
  int data = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Stateful Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              data.toString(),
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(height: 20),
            FlatButton(
              onPressed: () {
                setState(() {
                  data++;
                  print(data);
                });
              },
              child: Text('increas'),
              color: Colors.teal,
            )
          ],
        ),
      ),
    );
  }
}

class MyAppstseles extends StatelessWidget {
  int data = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text('Stateles Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              data.toString(),
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 20),
            FlatButton(
              onPressed: () {
                data++;
                print(data);
              },
              child: Text('increas'),
              color: Colors.teal,
            )
          ],
        ),
      ),
    );
  }
}
