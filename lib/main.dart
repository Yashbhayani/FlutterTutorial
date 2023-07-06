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
    var time = DateTime.now();
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Container(
              height: 300,
              width: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'weekday: ${time.weekday}',
                    style: const TextStyle(fontSize: 25),
                  ),
                  Text(
                    'Date: ${time.day}',
                    style: const TextStyle(fontSize: 25),
                  ),
                  Text(
                    'Month: ${time.month}',
                    style: const TextStyle(fontSize: 25),
                  ),
                  Text(
                    'Year: ${time.year}',
                    style: const TextStyle(fontSize: 25),
                  ),
                  Text(
                    'Time:- ${time.hour} : ${time.minute} :${time.second} :${time.millisecond} :${time.microsecond}  ',
                    style: const TextStyle(fontSize: 25),
                  ),
                  Text(
                    'Curent Time: $time',
                    style: const TextStyle(fontSize: 25),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {});
                      },
                      child: const Text('Current Time'))
                ],
              )),
        ));
  }
}
