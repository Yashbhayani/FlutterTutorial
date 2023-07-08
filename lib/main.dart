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
  var n_1 = TextEditingController();
  var n_2 = TextEditingController();
  // ignore: non_constant_identifier_names
  var Result = '';

  void add() {
    setState(() {
      int n1 = int.parse(n_1.text.toString()); //converting string to
      int n2 = int.parse(n_2.text.toString()); //integer
      // ignore: unnecessary_null_comparison
      if (n1 != null || n2 != null) {
        var sum = n1 + n2;
        Result = 'The Sum of $n1  and $n2 is $sum';
      }
    });
  }

  void sub() {
    setState(() {
      int n1 = int.parse(n_1.text.toString()); //converting string to
      int n2 = int.parse(n_2.text.toString()); //integer
      // ignore: unnecessary_null_comparison
      if (n1 != null || n2 != null) {
        var sub = n1 - n2;
        Result = 'The Sub of $n1  and $n2 is $sub';
      }
    });
  }

  void mult() {
    setState(() {
      int n1 = int.parse(n_1.text.toString()); //converting string to
      int n2 = int.parse(n_2.text.toString()); //integer
      // ignore: unnecessary_null_comparison
      if (n1 != null || n2 != null) {
        var mult = n1 * n2;
        Result = 'The Mult of $n1  and $n2 is $mult';
      }
    });
  }

  void div() {
    setState(() {
      int n1 = int.parse(n_1.text.toString()); //converting string to
      int n2 = int.parse(n_2.text.toString()); //integer
      // ignore: unnecessary_null_comparison
      if (n1 != null || n2 != null) {
        var div = n1 / n2;
        Result = 'The Div of $n1  and $n2 is $div';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
            color: Colors.blue.shade100,
            child: Center(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          keyboardType: TextInputType.number,
                          controller: n_1,
                        ),
                        TextField(
                          keyboardType: TextInputType.number,
                          controller: n_2,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                  onPressed: add,
                                  child: const Text(
                                    'Add',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold),
                                  )),
                              ElevatedButton(
                                  onPressed: sub,
                                  child: const Text(
                                    'Sub',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold),
                                  )),
                              ElevatedButton(
                                  onPressed: mult,
                                  child: const Text(
                                    'Mult',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold),
                                  )),
                              ElevatedButton(
                                  onPressed: div,
                                  child: const Text(
                                    'Div',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(21),
                          child: Text(
                            Result,
                            style: const TextStyle(
                                fontSize: 21, fontWeight: FontWeight.bold),
                          ),
                        )
                      ]),
                ),
              ),
            )));
  }
}
