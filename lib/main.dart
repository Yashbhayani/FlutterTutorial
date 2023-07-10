import 'dart:async';

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
  bool isFirst = true;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      reload(false);
    });
  }

  void reload(data) {
    setState(() {
      isFirst = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedCrossFade(
                duration: const Duration(seconds: 2),
                firstChild: Container(
                  width: 200,
                  height: 200,
                  color: Colors.transparent,
                ),
                secondChild: Image.asset(
                  'assets/images/Icon-192.png',
                  width: 300,
                  height: 300,
                ),
                sizeCurve: Curves.fastOutSlowIn,
                /* firstCurve: Curves.easeInOut,
                secondCurve: Curves.bounceInOut,*/
                crossFadeState: isFirst
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                /*crossFadeState: CrossFadeState.showFirst,
                crossFadeState: CrossFadeState.showSecond,*/
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        reload(false);
                      },
                      child: const Text('Show')),
                  const SizedBox(
                    width: 11,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        reload(true);
                      },
                      child: const Text('Hide')),
                ],
              )
            ],
          ),
        ));
  }
}
