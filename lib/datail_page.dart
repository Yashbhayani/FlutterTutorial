import 'package:flutter/material.dart';

class DatailPage extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  var data;

  DatailPage(this.data, {Key? key})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AppBarScreen',
        ),
      ),
      body: Container(
        child: Hero(tag: 'Background', child: Image.asset(data)),
      ),
    );
  }
}
