import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<int> items = List<int>.generate(100, (int index) => index);
  // final List<bool> _selected = List<bool>.generate(100, (int index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return ListView.builder(
            itemCount: items.length,
            padding: const EdgeInsets.symmetric(vertical: 16),
            itemBuilder: (BuildContext context, int index) {
              return Dismissible(
                background: Container(
                  color: Colors.transparent,
                ),
                key: ValueKey<int>(items[index]),
                onDismissed: (DismissDirection direction) {
                  setState(() {
                    items.removeAt(index);
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    tileColor: Colors.black,
                    // tileColor: _selected[index] ? Colors.black45 : Colors.black,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 2),
                      borderRadius: BorderRadius.circular(50), //<-- SEE HERE
                    ),
                    leading: CircleAvatar(
                      backgroundColor: const Color(0xff6ae792),
                      child: Text(
                        '${items[index]}',
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                    title: Text(
                      'Item ${items[index]}',
                      style: const TextStyle(fontSize: 21, color: Colors.blue),
                    ),
                    // onTap: () => setState(() => _selected[index] = !_selected[index]), // Reverse bool value
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
