import 'package:flutter/material.dart';

import 'main.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Intro Page',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome',
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
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
