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
    var textStyle = const TextStyle(
      fontSize: 25,
      color: Color.fromARGB(255, 255, 255, 255),
      fontWeight: FontWeight.bold,
      backgroundColor: Colors.deepOrangeAccent,
    );

    var container = Container(
      width: 200,
      height: 100,
      color: Colors.deepOrangeAccent,
      child: Center(
        child: Text(
          "Yash",
          style: textStyle,
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: container,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
