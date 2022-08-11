import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool a = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(a ? "vivek is very good boy" : "vivek is very bad boy"),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            a = !a;
          });
        },
        child: Container(color: Colors.red),
      ),
    );
  }
}
