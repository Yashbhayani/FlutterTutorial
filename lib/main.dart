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
    var name = [
      'Yash',
      'Rohan',
      'Darshan',
      'Vatsal',
      'Aryan',
      'Neer',
      'Ram',
      'Hari',
      'Shyam'
    ];
    var number = [
      '9988776655',
      '9988776555',
      '9988876655',
      '9998776655',
      '9988776633',
      '9988777655',
      '9988776355',
      '9988776632',
      '9988776621'
    ];

    List<Map<String, String>> k = [
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
            var listTile = ListTile(
              leading: Text('${index + 1}'),
              title: Text(name[index]),
              subtitle: Text(number[index]),
              trailing: const Icon(Icons.add),
            );
            return listTile;
          },
          itemCount: k.length,
          separatorBuilder: (context, index) {
            const divider = Divider(
              height: 10,
              thickness: 1,
            );
            return divider;
          },
        ));
  }
}
