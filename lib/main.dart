import 'package:flutter/material.dart';
import 'package:flutter_os/Nav.dart';
import 'Nav.dart';
import 'quiz/Home.dart';

void main() {
  runApp(
    MaterialApp(
      home: QuestionHome(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/joker.jpg'),
                radius: 60,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Moath Fawares',
                style: TextStyle(
                    color: Colors.white, fontSize: 30, fontFamily: 'muli'),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                    color: Colors.grey[400], fontSize: 24, fontFamily: 'muli'),
              ),
              Container(
                width: 150,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width - 100,
                height: 50,
                color: Colors.white,
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.phone_android),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '+123456789321',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 100,
                height: 50,
                color: Colors.white,
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.email),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'gjjaasd@gmail.com',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
