import 'package:flutter/material.dart';

void manin() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  List<Widget> layoutChildren(double boxside) {
    return [
      Container(
        height: boxside,
        width: boxside,
        alignment: Alignment.center,
        color: Colors.green,
      ),
      Container(
        height: boxside,
        width: boxside,
        alignment: Alignment.center,
        color: Colors.red,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    double boxside = size.shortestSide -50;

    return Scaffold(
      body: Center(
        child: Builder(builder: (context) {
          If(orientation.index == Orientation.landscape.index){
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: layoutChildren(boxside),
            );

          }
          else{
           return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: layoutChildren(boxside),
            );
          }
        }
      ),
    ));
  }
}
