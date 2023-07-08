import 'package:flutter/material.dart';

import 'main.dart';

// ignore: must_be_immutable
class ProfileScreen extends StatelessWidget {
  ProfileScreen(this.nameFromeHome, String s, {super.key});

  var nameFromeHome;
  get title => key;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$key'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome $nameFromeHome',
              style: const TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 11),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const MyHomePage(title: "Home Page");
                  }));
                },
                child: const Text(
                  'Next',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                )
                /*const Icon(
                  Icons.skip_next,
                  size: 100,
                )*/
                )
          ],
        ),
      ),
    );
  }
}
