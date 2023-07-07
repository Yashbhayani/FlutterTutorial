import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  var time = DateTime.now();
  Widget build(BuildContext context) {
    var text = Text(
      '${DateFormat().format(time)}',
      style: const TextStyle(fontSize: 25),
    );
    var text2 = Text(
      '${DateFormat('jms').format(time)}',
      style: const TextStyle(fontSize: 25),
    );
    var text3 = Text(
      '${DateFormat('yMMMMd').format(time)}',
      style: const TextStyle(fontSize: 25),
    );
    var text4 = Text(
      '${DateFormat('yMMMM').format(time)}',
      style: const TextStyle(fontSize: 25),
    );
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: SizedBox(
            height: 200,
            width: 500,
            child: Column(
              children: [
                text,
                text2,
                text3,
                text4,
                ElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: const Text('Click here!')),
              ],
            ),
          ),
        ));
  }
}
