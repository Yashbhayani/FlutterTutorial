import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    const edgeInsets =
        EdgeInsets.only(top: 21, left: 34, bottom: 11, right: 34);
    const text = Text(
      'Hello World!',
      style: TextStyle(fontSize: 25, color: Colors.white),
    );
    const padding2 = Padding(
      // padding: EdgeInsets.all(11),
      padding: edgeInsets,
      child: text,
    );
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          color: Colors.blueGrey,
          margin: const EdgeInsets.all(11),
          child: padding2,
        ));
  }
}
