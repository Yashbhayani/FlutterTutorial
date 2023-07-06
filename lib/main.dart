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
  var mnumberText = TextEditingController();
  var emailText = TextEditingController();
  var passwordText = TextEditingController();

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    var container = Container(
      height: 11,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextField(
              keyboardType: TextInputType.phone,
              controller: mnumberText,
              decoration: InputDecoration(
                  hintText: 'Enter Mobile Number',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 49, 126, 143),
                      width: 2,
                    ),
                  ),
                  // suffixText: "Username exist",
                  prefixIcon: const Icon(
                    Icons.phone,
                    color: Colors.blue,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 49, 126, 143),
                      ))),
            ),
            container,
            TextField(
              controller: emailText,
              decoration: InputDecoration(
                  hintText: 'Enter Email',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 49, 126, 143),
                      width: 2,
                    ),
                  ),
                  // suffixText: "Username exist",
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Colors.blue,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 49, 126, 143),
                      ))),
            ),
            container,
            TextField(
              controller: passwordText,
              obscureText: _obscureText,
              // obscuringCharacter: '*',
              decoration: InputDecoration(
                  hintText: 'Password',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 49, 126, 143),
                      width: 2,
                    ),
                  ),
                  // suffixText: "Username exist",
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                      color: Colors.blue,
                    ),
                    onPressed: () {
                      _obscureText = !_obscureText;
                    },
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 49, 126, 143),
                      ))),
            ),
            container,
            ElevatedButton(
                onPressed: () {
                  String uMnumber = mnumberText.text.toString();
                  String uEmail = emailText.text.toString();
                  String uPassword = passwordText.text;
                  print(
                      'Mobile Number:$uMnumber Email: $uEmail, Pass: $uPassword');
                },
                child: const Text('Click Here'))
          ]),
        ),
      ),
    );
  }
}
