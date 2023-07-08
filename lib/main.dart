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
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Wrap(
            direction: Axis.vertical,
            alignment: WrapAlignment.spaceEvenly,
            spacing: 11,
            runSpacing: 11,
            children: [
              Container(
                width: 80,
                height: 80,
                color: Colors.deepOrangeAccent,
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.brown,
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.blue,
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.orange,
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.deepOrangeAccent,
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.brown,
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.blue,
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.orange,
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.deepOrangeAccent,
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.brown,
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.blue,
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.orange,
              ),
            ],
          ),
        ));
  }
}
