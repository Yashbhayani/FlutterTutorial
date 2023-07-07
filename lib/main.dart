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
    var arrColor = [
      Colors.amber,
      Colors.orange,
      Colors.grey,
      Colors.blue,
      Colors.pink,
      Colors.green,
      Colors.purpleAccent,
      Colors.brown
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            Container(
              height: 200,
              child: GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 11,
                mainAxisSpacing: 11,
                children: [
                  Container(
                    color: arrColor[0],
                  ),
                  Container(
                    color: arrColor[1],
                  ),
                  Container(
                    color: arrColor[2],
                  ),
                  Container(
                    color: arrColor[3],
                  ),
                  Container(
                    color: arrColor[4],
                  ),
                  Container(
                    color: arrColor[5],
                  ),
                  Container(
                    color: arrColor[6],
                  ),
                  Container(
                    color: arrColor[7],
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
            ),
            Container(
              height: 200,
              child: GridView.count(
                crossAxisCount: 4,
                children: [
                  Container(
                    color: arrColor[0],
                  ),
                  Container(
                    color: arrColor[1],
                  ),
                  Container(
                    color: arrColor[2],
                  ),
                  Container(
                    color: arrColor[3],
                  ),
                  Container(
                    color: arrColor[4],
                  ),
                  Container(
                    color: arrColor[5],
                  ),
                  Container(
                    color: arrColor[6],
                  ),
                  Container(
                    color: arrColor[7],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
