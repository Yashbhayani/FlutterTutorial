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
  var arrData = [
    {'name': 'Yash', 'number': '9988776655', 'unread': 1},
    {'name': 'Rohan', 'number': '9988776555', 'unread': 2},
    {'name': 'Darshan', 'number': '9988876655', 'unread': 3},
    {'name': 'Vatsal', "number": '9998776655', 'unread': 4},
    {'name': 'Aryan', 'number': '9988776633', 'unread': 5},
    {'name': 'Neer', 'number': '9988777655', 'unread': 6},
    {'name': 'Ram', 'number': '9988776355', 'unread': 7},
    {'name': 'Hari', 'number': '9988776632', 'unread': 8},
    {'name': 'Shyam', 'number': '9988776621', 'unread': 9},
    {'name': 'Yash', 'number': '9988776655', 'unread': 1},
    {'name': 'Rohan', 'number': '9988776555', 'unread': 2},
    {'name': 'Darshan', 'number': '9988876655', 'unread': 3},
    {'name': 'Vatsal', "number": '9998776655', 'unread': 4},
    {'name': 'Aryan', 'number': '9988776633', 'unread': 5},
    {'name': 'Neer', 'number': '9988777655', 'unread': 6},
    {'name': 'Ram', 'number': '9988776355', 'unread': 7},
    {'name': 'Hari', 'number': '9988776632', 'unread': 8},
    {'name': 'Shyam', 'number': '9988776621', 'unread': 9},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: arrData
            .map((value) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.account_circle,
                      size: 31,
                    ),
                    title: Text(
                      value['name'].toString(),
                      style: const TextStyle(fontSize: 21),
                    ),
                    subtitle: Text(value['number'].toString()),
                    trailing: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.green,
                        child: Text(value['unread'].toString())),
                  ),
                ))
            .toList(),
      ),
    );
  }
}

/*
ListView(
        children: arrData
            .map((value) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.account_circle,
                      size: 31,
                    ),
                    title: Text(
                      value['name'].toString(),
                      style: const TextStyle(fontSize: 21),
                    ),
                    subtitle: Text(value['number'].toString()),
                    trailing: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.green,
                        child: Text(value['unread'].toString())),
                  ),
                ))
            .toList(),
      ),
 */

/*
Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Click')),
            const Text('Some other widgets'),
            Expanded(
              child: ListView(
                children: arrData
                    .map((value) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            leading: const Icon(
                              Icons.account_circle,
                              size: 31,
                            ),
                            title: Text(
                              value['name'].toString(),
                              style: const TextStyle(fontSize: 21),
                            ),
                            subtitle: Text(value['number'].toString()),
                            trailing: CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.green,
                                child: Text(value['unread'].toString())),
                          ),
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      ),

 */
