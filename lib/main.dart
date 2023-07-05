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
    const textStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
    var container = Container(
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'R1',
                  style: textStyle,
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Click hear'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Click hear'),
                    ),
                  ],
                ),
                const Text(
                  'R2',
                  style: textStyle,
                ),
                const Text(
                  'R3',
                  style: textStyle,
                ),
                const Text(
                  'R4',
                  style: textStyle,
                ),
                const Text(
                  'R5',
                  style: textStyle,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Click hear'),
                ),
              ],
            ),
            const Text(
              'A',
              style: textStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Click hear'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Click hear'),
                ),
              ],
            ),
            const Text(
              'B',
              style: textStyle,
            ),
            const Text(
              'C',
              style: textStyle,
            ),
            const Text(
              'D',
              style: textStyle,
            ),
            const Text(
              'E',
              style: textStyle,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Click hear'),
            ),
          ],
        ));
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: container);
  }
}
