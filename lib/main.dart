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
  var _width = 200.0;
  var _heidth = 100.0;
  bool flag = true;

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
            AnimatedContainer(
              width: _width,
              height: _heidth,
              // curve: Curves.slowMiddle,
              // curve: Curves.bounceIn,
              // curve: Curves.bounceOut,
              curve: Curves.bounceInOut,

              decoration: myDecoration,
              duration: const Duration(seconds: 2),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (flag) {
                      _width = 100.0;
                      _heidth = 200.0;
                      myDecoration = BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.orange);
                      flag = false;
                    } else {
                      _width = 200.0;
                      _heidth = 100.0;
                      myDecoration = BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Colors.blueGrey,
                      );
                      flag = true;
                    }
                  });
                },
                child: const Text('Aminated'))
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
