import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.play_circle_fill_outlined,
              size: 50,
              color: Colors.blue,
            ),
            SizedBox(
              width: 11,
            ),
            FaIcon(FontAwesomeIcons.amazon, size: 50),
            SizedBox(
              width: 21,
            ),
            FaIcon(
              FontAwesomeIcons.calendar,
              size: 50,
              color: Colors.blue,
            ),
            SizedBox(
              width: 21,
            ),
            FaIcon(
              FontAwesomeIcons.amazonPay,
              size: 50,
              color: Colors.blue,
            ),
            SizedBox(
              width: 21,
            ),
            FaIcon(
              FontAwesomeIcons.googlePay,
              size: 50,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
