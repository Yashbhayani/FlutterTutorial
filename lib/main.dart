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
      body: Wrap(
        direction: Axis.vertical,
        children: [
          SizedBox.square(
            dimension: 100,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Click'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox.square(
            dimension: 100,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Click'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox.square(
            dimension: 100,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Click'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox.square(
            dimension: 100,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Click'),
            ),
          ),
        ],
      ),
    );
  }
}

/*Center(
          SizedBox(
            height: 34,
            width: 200,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Click'),
            ),
          ),
           */

          /*
          SizedBox.expand(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Click'),
            ),
          ),
          )
*/

/*
Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: 200,
            minHeight: 40,
            maxHeight: 80,
            maxWidth: 400,
          ),
          child: SizedBox.shrink(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Click'),
            ),
          ),
        ),
      ),
*/