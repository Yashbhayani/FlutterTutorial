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
  var arrData = [
    'Yash',
    'Vidhi',
    'Darshan',
    'Rohan',
    'Vatsal',
    'Neer',
    'Viranshi',
    'Raj',
    'Yash',
    'Vidhi',
    'Darshan',
    'Rohan',
    'Vatsal',
    'Neer',
    'Viranshi',
    'Raj'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: arrData.map((value) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                color: Colors.blue.shade100,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Text(value)),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

/*
  ListView(
              children: arrData
                  .map(
                    (value) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(21),
                          color: Colors.blue.shade100,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: Text(value)),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            )
          
*/
