import 'package:flutter/material.dart';
import 'package:passdataonscreen/profile_screen.dart';
import 'package:passdataonscreen/splashscreen.dart';

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
      home: SplashScreen(),
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
  var namecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'DashBoard Screen',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(
                  height: 11,
                ),
                TextField(
                  controller: namecontroller,
                  style: const TextStyle(fontSize: 21),
                ),
                const SizedBox(
                  height: 11,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ProfileScreen(
                            namecontroller.text.toString(), 'Profile Page');
                      }));
                    },
                    child: const Text(
                      'My Profile',
                      style: TextStyle(fontSize: 21),
                    ))
              ],
            ),
          ),
        ));
  }
}
