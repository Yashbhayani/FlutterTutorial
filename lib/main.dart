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
  @override
  Widget build(BuildContext context) {
    var textStyle = const TextStyle(fontSize: 21, fontWeight: FontWeight.bold);
    var inkWell = InkWell(
        onTap: () => {print('On Tap')},
        onLongPress: () => {print('On LongPress')},
        onDoubleTap: () => {print('on DoubleTap')},
        child: Container(
          width: 200,
          height: 200,
          color: const Color.fromRGBO(255, 193, 7, 1),
          child: Center(
            child: InkWell(
              onTap: () => {print('Text Widget Tapped!')},
              child: Text(
                'Click here',
                style: textStyle,
              ),
            ),
          ),
        ));
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(child: inkWell));
  }
}
