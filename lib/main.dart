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
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
                child: Container(
                    // width: double.infinity,
                    // height: double.infinity,
                    // color: Colors.blue.shade50,
                    child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 11),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(11)),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 11),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(21)),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 11),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(51)),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 11),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(75)),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 11),
                      width: 150,
                      height: 150,
                      decoration: const BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(21),
                              bottomRight: Radius.circular(21))),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50, bottom: 50),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.all(Radius.circular(21)),
                        border: Border.all(width: 2, color: Colors.black),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 51,
                            spreadRadius: 21,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50, bottom: 50),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        border: Border.all(width: 2, color: Colors.black),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 51,
                            spreadRadius: 21,
                            color: Colors.grey,
                          )
                        ],
                        shape: BoxShape.circle,
                      ),
                    )
                  ]),
            )))));
  }
}
