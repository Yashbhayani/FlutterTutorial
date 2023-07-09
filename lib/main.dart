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
  var myOpacity = 1.0;
  bool flag = true;
  var _btn = 'Close';

  Decoration myDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    color: Colors.blueGrey,
  );
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: myOpacity,
              duration: const Duration(seconds: 1),
              curve: Curves.slowMiddle,
              child: Container(
                width: 200,
                height: 100,
                color: Colors.blue,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (flag) {
                      myOpacity = 0.0;
                      _btn = 'Open';
                      flag = false;
                    } else {
                      myOpacity = 1.0;
                      _btn = 'Close';
                      flag = true;
                    }
                  });
                },
                child: Text(_btn))
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
