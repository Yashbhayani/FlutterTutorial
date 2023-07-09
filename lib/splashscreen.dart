import 'dart:async';

import 'package:flutter/material.dart';
import 'main.dart';

class SplashScreen extends StatefulWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  SplashScreen({Key? key})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return const MyHomePage(title: 'Home page');
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.blue,
      child: const Center(
          child: Text(
        'BMI',
        style: TextStyle(
            color: Colors.white, fontSize: 34, fontWeight: FontWeight.bold),
      )),
    ));
  }
}
