import 'package:flutter/material.dart';

import 'fifthpage.dart';

class ForthPage extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  ForthPage({Key? key})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'ForthPage',
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
              colors: [
                Color(0xffffecd2),
                Color(0xfffcb69f),
                Color(0xffff9b7e),
              ],
              begin: FractionalOffset(1.0, 0.5),
              end: FractionalOffset(0.0, 0.5),
              stops: [0.0, 0.4, 1.0],
            ),
          ),
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FIfthpage();
                }));
              },
              child: const Text('Click'),
            ),
          ),
        ));
  }
}
