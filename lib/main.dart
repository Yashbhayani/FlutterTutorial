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
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Grid Layout'),
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
              child: GridView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    color: arrColor[index],
                  );
                },
                itemCount: arrColor.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 11,
                  crossAxisSpacing: 11,
                ),
              ),
            ),
            Container(
              height: 200,
            ),
            Container(
              height: 200,
              child: GridView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    color: arrColor[index],
                  );
                },
                itemCount: arrColor.length,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 100,
                  mainAxisSpacing: 11,
                  crossAxisSpacing: 11,
                ),
              ),
            ),
          ],
        ));
  }
}
