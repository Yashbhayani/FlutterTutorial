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
    final List<Map<String, String>> k = [
      {'name': 'Yash', 'number': '9988776655'},
      {'name': 'Rohan', 'number': '9988776555'},
      {'name': 'Darshan', 'number': '9988876655'},
      {'name': 'Vatsal', "number": '9998776655'},
      {'name': 'Aryan', 'number': '9988776633'},
      {'name': 'Neer', 'number': '9988777655'},
      {'name': 'Ram', 'number': '9988776355'},
      {'name': 'Hari', 'number': '9988776632'},
      {'name': 'Shyam', 'number': '9988776621'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          var item = k[index];
          return ListTile(
            leading: Text('${index + 1}'),
            title: Text(item['name']!),
            subtitle: Text(item['number']!),
            trailing: Icon(Icons.add),
          );
        },
        itemCount: k.length,
        separatorBuilder: (context, index) {
          const divider = Divider(
            height: 10,
            thickness: 1,
          );
          return divider;
        },
      ),
    );
  }
}
