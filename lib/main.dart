import 'package:customwidget/ui/uiuntil.dart';
import 'package:customwidget/widgets/rbtn.dart';
import 'package:customwidget/widgets/rounded_btn.dart';
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 120,
                child: RoundedButton(
                    btName: 'Login',
                    bgColor: Colors.blue,
                    icon: Icon(Icons.lock),
                    callback: () {
                      print('Logged in!');
                    },
                    textStyle: mTextstyle11()),
              ),
              Container(
                width: 120,
                child: RoundedButton(
                    btName: 'Play',
                    bgColor: Colors.amber,
                    icon: Icon(Icons.play_arrow),
                    callback: () {
                      print('Play on!');
                    },
                    textStyle: mTextstyle11()),
              ),
              Container(
                width: 120,
                child: RButton(
                    btName: 'Login',
                    bgColor: Colors.blue,
                    icon: Icon(Icons.lock),
                    callback: () {
                      print('Logged in!');
                    },
                    textStyle: mTextstyle11()),
              ),
              Container(
                width: 150,
                height: 50,
                child: RButton(
                    btName: 'Play',
                    bgColor: Colors.amber,
                    icon: Icon(Icons.play_arrow),
                    callback: () {
                      print('Play on!');
                    },
                    textStyle: mTextstyle11()),
              ),
              Container(
                width: 150,
                height: 50,
                child: RButton(
                    btName: 'press',
                    bgColor: Colors.amber,
                    callback: () {
                      print('Press!');
                    },
                    textStyle: mTextstyle11()),
              ),
            ],
          ),
        ));
  }
}
