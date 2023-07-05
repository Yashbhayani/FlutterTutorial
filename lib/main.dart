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
    var name = [
      'Yash',
      'Vidhi',
      'Darshan',
      'Rohan',
      'Vatsal',
      'Neer',
      'Viranshi',
      'Raj'
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            const textStyle =
                TextStyle(fontSize: 21, fontWeight: FontWeight.w500);
            const textStyle1 =
                TextStyle(fontSize: 11, fontWeight: FontWeight.w500);
            return Row(
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          name[index],
                          style: textStyle,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            name[index],
                            style: textStyle1,
                          ),
                        ),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    name[index],
                    style: textStyle,
                  ),
                )
              ],
            );
          },
          itemCount: name.length,
          separatorBuilder: (context, index) {
            const divider = Divider(
              height: 25,
              thickness: 2,
            );
            return divider;
          },
          // scrollDirection: Axis.horizontal,
        )

        /*ListView.builder(
          itemBuilder: (context, index) {
            const textStyle =
                TextStyle(fontSize: 21, fontWeight: FontWeight.w500);
            return Text(
              name[index],
              style: textStyle,
            );
          },
          itemCount: name.length,
          itemExtent: 100,
        //scrollDirection: Axis.horizontal,
          scrollDirection: Axis.vertical,
        )
        */

        /*ListView(
          scrollDirection: Axis.horizontal,
          reverse: true,
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'One',
                style: textStyle,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Two',
                style: textStyle,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Three',
                style: textStyle,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Four',
                style: textStyle,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Five',
                style: textStyle,
              ),
            ),
          ],
        ),*/
        );
  }
}
