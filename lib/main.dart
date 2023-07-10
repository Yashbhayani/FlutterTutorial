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
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius:
                      const BorderRadius.all(Radius.elliptical(21, 71)),
                  child: Container(
                    color: Colors.grey,
                    width: 100,
                    height: 100,
                  ),
                ),
                const SizedBox(
                  height: 21,
                ),
                ClipRRect(
                  borderRadius:
                      const BorderRadius.all(Radius.elliptical(71, 51)),
                  child: Container(
                    color: Colors.grey,
                    width: 100,
                    height: 100,
                  ),
                ),
                const SizedBox(
                  height: 21,
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21)),
                  child: Container(
                    color: Colors.grey,
                    width: 200,
                    height: 100,
                  ),
                ),
                const SizedBox(
                  height: 21,
                ),
                ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(31),
                        bottomRight: Radius.circular(31)),
                    child:
                        Image.asset('assets/images/pexels-pixabay-33045.jpg')),
                const SizedBox(
                  height: 21,
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(21),
                    child: Image.asset(
                      'assets/images/pexels-pixabay-33045.jpg',
                      width: 400,
                      height: 200,
                      fit: BoxFit.fill,
                    )),
                const SizedBox(
                  height: 21,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
