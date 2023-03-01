import 'package:drang_dropp/visiblility.dart';
import 'package:flutter/material.dart';

import 'draggable_simple.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => MyApp(),
        'draggable': (context) => DraggableSimple(),
        'visibility': (context) => visliblity(),
      },
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drag and Drop"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed("draggable");
                },
                child: Text("Draggable")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed("visibility");
                },
                child: Text("Visibility")),
          ],
        ),
      ),
    );
  }
}
