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
    const edgeInsets = const EdgeInsets.only(bottom: 11);
    var container = Container(
      margin: edgeInsets,
      width: 100,
      height: 100,
      child: const CircleAvatar(
        backgroundImage: AssetImage('assets/images/pexels-pixabay-33045.jpg'),
        backgroundColor: Colors.transparent,
        radius: 50,
      ),
    );
    var container2 = Container(
      margin: edgeInsets,
      width: 100,
      height: 100,
      child: const CircleAvatar(
        backgroundImage: AssetImage(
            'assets/images/pngtree-the-flutter-colorful-design-png-image_8801693.png'),
        backgroundColor: Colors.transparent,
        radius: 50,
      ),
    );
    var container3 = Container(
      margin: edgeInsets,
      width: 100,
      height: 100,
      child: const CircleAvatar(
        backgroundImage: AssetImage(
            'assets/images/pngtree-the-flutter-colorful-design-png-image_8801693.png'),
        backgroundColor: Colors.green,
        radius: 50,
      ),
    );
    var container4 = Container(
      margin: edgeInsets,
      width: 100,
      height: 100,
      child: const CircleAvatar(
        backgroundImage: AssetImage(
            'assets/images/pngtree-the-flutter-colorful-design-png-image_8801693.png'),
        backgroundColor: Colors.green,
        radius: 50,
        child: Text(
          'Yash',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 21,
          ),
        ),
      ),
    );
    var container5 = Container(
      margin: edgeInsets,
      child: const CircleAvatar(
        backgroundColor: Colors.lightGreen,
        //backgroundColor: Colors.transparent,
        radius: 50,
        child: Text(
          'name',
          style: TextStyle(color: Colors.blue, fontSize: 21),
        ),
        //minRadius: 50,
        // ),
      ),
    );
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  container,
                  container2,
                  container3,
                  container4,
                  container5,
                ],
              ),
            ),
          ),
        ));
  }
}
