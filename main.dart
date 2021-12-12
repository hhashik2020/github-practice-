import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
          body: Column(
        children: [
          Container(
            height: 50,
            color: Colors.purple,
          ),
          Expanded(
            flex: 4,
            
              child: Container(
            color: Colors.blueAccent,
          )),
          Expanded(
            child: Container(
              width: 500,
              height: 50,             
              color: Colors.black,
              child: Wrap(
                alignment: WrapAlignment.spaceAround,
                direction: Axis.horizontal,                                           
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.phone,
                        color: Colors.white,
                      )),
                      IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.mail,
                        color: Colors.white,
                      )),
                      IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.local_post_office_rounded,
                        color: Colors.white,
                      )),
                      IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.home_filled,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
