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
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            children: [
              const Text('Select Date'),
              ElevatedButton(
                  onPressed: () async {
                    DateTime? datePiker = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2021, 1, 1),
                      lastDate: DateTime(2023, 12, 31),
                    );

                    datePiker != null
                        // ignore: avoid_print
                        ? print(
                            'Date Selected: ${datePiker.day}/${datePiker.month}/${datePiker.year}')
                        : '';
                  },
                  child: const Text(
                    'Click here For Date!',
                    style: TextStyle(color: Colors.white),
                  )),
              ElevatedButton(
                  onPressed: () async {
                    TimeOfDay? pickedTime = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                      initialEntryMode: TimePickerEntryMode.dial,
                      // initialEntryMode: TimePickerEntryMode.input,
                    );

                    pickedTime != null
                        // ignore: avoid_print
                        ? print(
                            'Date Selected: ${pickedTime.hour}:${pickedTime.minute}')
                        : '';
                  },
                  child: const Text('Click here For Time!'))
            ],
          ),
        ));
  }
}
