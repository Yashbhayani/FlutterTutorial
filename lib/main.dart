import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  double _top = 100, _left = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Stack(children: [
        Positioned(
          child: GestureDetector(
            onPanUpdate: (DragUpdateDetails data) {
              _top = max(0, _top + data.delta.dy);
              _left = max(0, _top + data.delta.dx);
              setState(() {});
            },
            onTap: () => ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('Tapped'))),
            onDoubleTap: () => ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('DoubleTapTapped'))),
            onLongPress: () => ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('LongTapped'))),
            child: Container(
              color: Theme.of(context).primaryColor,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Click',
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.onPrimary),
                ),
              ),
            ),
          ),
        )
      ])),
    );
  }
}
