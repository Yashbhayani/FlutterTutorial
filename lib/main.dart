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
      debugShowCheckedModeBanner: false,
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
    var row = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          height: 200,
          width: 200,
          color: const Color.fromARGB(255, 175, 238, 104),
        ),
        Container(
          margin: const EdgeInsets.only(right: 10),
          height: 200,
          width: 200,
          color: const Color.fromARGB(255, 187, 22, 0),
        ),
        Container(
          margin: const EdgeInsets.only(right: 11),
          height: 200,
          width: 200,
          color: const Color.fromARGB(255, 255, 183, 0),
        ),
        Container(
          margin: const EdgeInsets.only(right: 11),
          height: 200,
          width: 200,
          color: const Color.fromARGB(255, 0, 236, 149),
        ),
        Container(
          margin: const EdgeInsets.only(right: 11),
          height: 200,
          width: 200,
          color: const Color.fromARGB(255, 0, 238, 242),
        ),
        Container(
          margin: const EdgeInsets.only(right: 11),
          height: 200,
          width: 200,
          color: const Color.fromARGB(255, 0, 38, 254),
        ),
        Container(
          margin: const EdgeInsets.only(right: 11),
          height: 200,
          width: 200,
          color: const Color.fromARGB(255, 200, 0, 250),
        ),
        Container(
          margin: const EdgeInsets.only(right: 11),
          height: 200,
          width: 200,
          color: const Color.fromARGB(255, 255, 0, 191),
        ),
        Container(
          margin: const EdgeInsets.only(right: 11),
          height: 200,
          width: 200,
          color: const Color.fromARGB(255, 255, 0, 0),
        ),
        Container(
          margin: const EdgeInsets.only(right: 11),
          height: 200,
          width: 200,
          color: const Color.fromARGB(255, 0, 0, 0),
        ),
      ],
    );
    var singleChildScrollView2 = SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: row,
    );
    var padding3 = Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: singleChildScrollView2,
    );
    var column = Column(
      children: [
        padding3,
        Container(
          margin: const EdgeInsets.only(bottom: 11),
          height: 200,
          color: Colors.lightGreen,
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 11),
          height: 200,
          color: const Color.fromARGB(255, 187, 22, 0),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 11),
          height: 200,
          color: const Color.fromARGB(255, 255, 183, 0),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 11),
          height: 200,
          color: const Color.fromARGB(255, 0, 236, 149),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 11),
          height: 200,
          color: const Color.fromARGB(255, 0, 238, 242),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 11),
          height: 200,
          color: const Color.fromARGB(255, 0, 38, 254),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 11),
          height: 200,
          color: const Color.fromARGB(255, 200, 0, 250),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 11),
          height: 200,
          color: const Color.fromARGB(255, 255, 0, 191),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 11),
          height: 200,
          color: const Color.fromARGB(255, 255, 0, 0),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 11),
          height: 200,
          color: const Color.fromARGB(255, 0, 0, 0),
        ),
      ],
    );
    var singleChildScrollView = SingleChildScrollView(child: column);
    var padding2 = Padding(
      padding: const EdgeInsets.all(8.0),
      child: singleChildScrollView,
    );
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: padding2);
  }
}
