import 'package:flutter/material.dart';
import 'Question.dart';

class QuestionHome extends StatefulWidget {
  @override
  _QuestionHomeState createState() => _QuestionHomeState();
}

final List<Question> databaseQuestion = Question.databaseQuestion();
int index = 0;

class _QuestionHomeState extends State<QuestionHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Text(
              databaseQuestion[index].question,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 250,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  onPressed: () {
                    print(index);
                    setState(() {
                      index++;
                    });
                  },
                  child: Text('True'),
                  color: Colors.green,
                ),
                SizedBox(
                  width: 30,
                ),
                FlatButton(
                  onPressed: () {
                    setState(() {
                      index++;
                    });
                  },
                  child: Text('False'),
                  color: Colors.red,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
