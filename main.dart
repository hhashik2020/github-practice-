// ignore_for_file: unnecessary_string_escapes

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      "Whats\'s your favourite animal ?",
      "What\'s your favourite color ? "
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Demo"),
        ),
        body: Column(
          children: [
            Text(question[questionIndex]),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  answerQuestion;
                },
                child: const Text("Button One")),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  answerQuestion;
                },
                child: const Text("Button Two")),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  answerQuestion;
                },
                child: const Text("Button Three")),
          ],
        ),
      ),
    );
  }
}
