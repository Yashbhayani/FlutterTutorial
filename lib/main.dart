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
    var image = Image.asset('assets/images/avtar.png');
    var container4 = Container(width: 50, height: 50, child: image);
    var column = Column(
      children: [
        container4,
        const Text(
          'Yash',
          style: TextStyle(color: Colors.white),
        )
      ],
    );
    var container3 = Container(
      height: 70,
      width: 70,
      child: column,
    );
    var container2 = container3;
    var container = container2;
    var circleAvatar = CircleAvatar(
      child: container,
      backgroundColor: Colors.green,
      maxRadius: 50,
    );
    var center = Center(
      child: circleAvatar,
    );
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: center);
  }
}
