import 'package:flutter/material.dart';
import 'package:snackbar/snack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MySnack(),
      ),
    );
  }
}

class MySnack extends StatefulWidget {
  const MySnack({Key? key}) : super(key: key);

  @override
  State<MySnack> createState() => _MySnackState();
}

class _MySnackState extends State<MySnack> {
  bool ligton = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: FractionalOffset.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  setState(() {
                    ligton = !ligton;
                  });
                },
                child: IconButton(
                  icon: Icon(
                    Icons.lightbulb_outline_sharp,
                    size: 60,
                    color: ligton ? Colors.red : Colors.yellow,
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Welcomed Sir!!!')));
                  },
                )),
          ],
        ),
      ),
    );
  }
}
