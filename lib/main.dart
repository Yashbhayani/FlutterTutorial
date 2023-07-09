import 'package:bmicalculator/splashscreen.dart';
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
  var wControler = TextEditingController();
  var tControler = TextEditingController();
  var iControler = TextEditingController();

  var result = '';

  var bgColor = Color.fromARGB(255, 195, 202, 249);

  // ignore: non_constant_identifier_names
  void Calculate() {
    setState(() {
      var wt = wControler.text.toString();
      var tt = tControler.text.toString();
      var it = iControler.text.toString();
      if (wt != '' && tt != '' && it != '') {
        var iwt = int.parse(wt);
        var iFt = int.parse(tt);
        var iInch = int.parse(it);
        var tInch = (iFt * 12) + iInch;
        var tCm = tInch * 2.54;
        var tM = tCm / 100;
        var bmi = iwt / (tM * tM);
        var msg = '';
        if (bmi > 25) {
          msg = "You're OverWeight";
          bgColor = Colors.orange.shade200;
        } else if (bmi < 18) {
          msg = "You're UnderWeight";
          bgColor = Colors.red.shade200;
        } else {
          msg = "You're Healthy!!";
          bgColor = Colors.green.shade200;
        }
        result = '$msg \n Your BMI is: ${bmi.toStringAsFixed(0)}';
      } else {
        result = 'Please fill the all required  blanks!!';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: bgColor,
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'BMI',
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 21,
                ),
                TextField(
                  controller: wControler,
                  decoration: InputDecoration(
                      label: const Text('Enter Your Weight(in feet)'),
                      prefixIcon: const Icon(Icons.line_weight),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: const BorderSide(color: Colors.blue))),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 21,
                ),
                TextField(
                  controller: tControler,
                  decoration: InputDecoration(
                      label: const Text('Enter Your Height(in feet)'),
                      prefixIcon: const Icon(Icons.height),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: const BorderSide(color: Colors.blue))),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 21,
                ),
                TextField(
                  controller: iControler,
                  decoration: InputDecoration(
                      label: const Text('Enter Your Height(in inch)'),
                      prefixIcon: const Icon(Icons.height),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: const BorderSide(color: Colors.blue))),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 21,
                ),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: Calculate,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        shadowColor: Colors.amber,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(21)))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Center(child: Icon(Icons.calculate)),
                        Center(
                          child: Container(
                            width: 11,
                          ),
                        ),
                        const Center(
                          child: Text(
                            'Calculate',
                            style: TextStyle(
                                fontSize: 21, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  result,
                  style: const TextStyle(
                      fontSize: 21, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
