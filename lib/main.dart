import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String va = "vivek is very good boy";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(va),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            va = "vivek is very bad boy";
          });
        },
        child: Container(color: Colors.red),
      ),
    );
  }
}
