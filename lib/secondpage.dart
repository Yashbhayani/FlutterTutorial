import 'package:flutter/material.dart';
import 'package:gradient/thirdpage.dart';

class SecondPage extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  SecondPage({Key? key})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'SecondScreen',
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.of(context).pop(),
          ),
          automaticallyImplyLeading: true,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.orange.shade100,
                Colors.purple.shade100,
                Colors.brown.shade100
              ],
            ),
          ),
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ThirdPage();
                }));
              },
              child: const Text('Click'),
            ),
          ),
        ));
  }
}
