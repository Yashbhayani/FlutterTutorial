import 'package:flutter/material.dart';
import 'package:tapp15stylesandthemes/ui/uitill.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
            displayLarge: TextStyle(fontSize: 41, fontWeight: FontWeight.bold),
            titleMedium: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic),
          )),
      home: const MyHomePage(title: 'Home Page'),
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
        body: Column(
          children: [
            Text(
              'Text 1',
              style: Theme.of(context)
                  .textTheme
                  .displayLarge
                  ?.copyWith(color: Colors.orange),
            ),
            Text(
              'Text 2',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text('Text 3',
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      color: Colors.green,
                    )),
            Text('Text 4', style: mTextstyle11()),
            Text('Text 5', style: mTextstyle2(tc: Colors.blue)),
          ],
        ));
  }
}
