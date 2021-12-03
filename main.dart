import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Home Page',
     debugShowCheckedModeBanner: false, 
     theme:ThemeData(
        
        primaryColor:const Color(0xFF832685),
        primaryColorLight:const Color(0xFFC81379),
        accentColor:const Color(0xFFFAF2FB),
        
      ),

      home:const ThemeDataPage()
    );
  }
}

class ThemeDataPage extends StatefulWidget {
  const ThemeDataPage({Key? key}) : super(key: key);

  @override
  _ThemeDataPageState createState() => _ThemeDataPageState();
}

class _ThemeDataPageState extends State<ThemeDataPage> {
  Icon searchbar = const Icon(Icons.search);
  Widget appBarTitle = const Text('Home Page');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        title: appBarTitle,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [Color(0xFF832685), Color(0xFFC81379)]),
          ),
        ),
        actions: [
          IconButton(
              icon: searchbar,
              onPressed: () {
                setState(() {
                  if (this.searchbar == Icons.search) {
                    this.searchbar = Icon(Icons.close);
                    this.appBarTitle = const TextField(
                      autofocus: true,
                      cursorColor: Color(0xFFFAF2FB),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          filled: true,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          hintText: "Search ..",
                          hintStyle: TextStyle(color: Colors.white)),
                    );
                  } else {
                    searchbar = const Icon(Icons.search);
                    appBarTitle = const Text('Home Page');
                  }
                });
              })
        ],
      ),
      body: Container(
        child:const Text('Home Page'),
      ),
    );
  }
}

