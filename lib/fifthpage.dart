import 'package:flutter/material.dart';
import 'package:gradient/sixpage.dart';

class FIfthpage extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  FIfthpage({Key? key})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'FifthPage',
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.of(context).pop(),
          ),
          automaticallyImplyLeading: true,
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              colors: [
                Color(0xffffecd2),
                Color(0xfffcb69f),
              ],
              // center: Alignment.topLeft,
              center: Alignment.bottomCenter,
              stops: [0.0, 0.1],
            ),
          ),
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SixthPage();
                }));
              },
              child: const Text('Click'),
            ),
          ),
        ));
  }
}
