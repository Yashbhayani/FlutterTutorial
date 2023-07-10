import 'package:flutter/material.dart';
import 'package:gradient/secondpage.dart';

class Newpage extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  Newpage({Key? key})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'AppBarScreen',
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.of(context).pop(),
          ),
          automaticallyImplyLeading: true,
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.orange, Colors.blue, Colors.brown],
            ),
          ),
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SecondPage();
                }));
              },
              child: const Text('Click'),
            ),
          ),
        ));
  }
}
