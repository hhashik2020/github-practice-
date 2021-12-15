
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool changeTheme = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.amber.shade700,
          primarySwatch: Colors.red,
          scaffoldBackgroundColor: Colors.blueGrey.shade300,
          textTheme: const TextTheme(
              bodyText2: TextStyle(color: Colors.white, height: 50))),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.lightBlue,
          scaffoldBackgroundColor: Colors.pink,
          textTheme: const TextTheme(
              bodyText2: TextStyle(color: Colors.white, height: 50))),
      themeMode: changeTheme ? ThemeMode.light : ThemeMode.light,
      home: Scaffold(

        body: Center(
          child: IconButton(
              onPressed: () {
                setState(() {
                  changeTheme = !changeTheme;
                });
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Your Theme is Changed !!!')));
              },
              icon: Icon(
                changeTheme ? Icons.change_circle : Icons.done,
                color: changeTheme?Colors.white:Colors.white,
                size: 60,
              )),
        ),
      ),
    );
  }
}
