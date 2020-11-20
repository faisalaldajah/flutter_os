import 'dart:ui';

import 'package:flutter/material.dart';


class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int data = 5;
  String name;
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
              'Stateful',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(height: 20),
            FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyAppstseles(data: data),
                  ),
                );
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
  int data;
  String name;


  MyAppstseles({@required this.data,this.name});


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
                Navigator.pop(context);
              },
              child: Text('Bcak'),
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}


