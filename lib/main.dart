import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.deepPurple,
        ),
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<int> items = List<int>.generate(100, (int index) => index);
  var arrData = [
    {'name': 'Yash', 'number': '9988776655', 'unread': 1},
    {'name': 'Rohan', 'number': '9988776555', 'unread': 2},
    {'name': 'Darshan', 'number': '9988876655', 'unread': 3},
    {'name': 'Vatsal', "number": '9998776655', 'unread': 4},
    {'name': 'Aryan', 'number': '9988776633', 'unread': 5},
    {'name': 'Neer', 'number': '9988777655', 'unread': 6},
    {'name': 'Ram', 'number': '9988776355', 'unread': 7},
    {'name': 'Hari', 'number': '9988776632', 'unread': 8},
    {'name': 'Shyam', 'number': '9988776621', 'unread': 9},
    {'name': 'Yash', 'number': '9988776655', 'unread': 1},
    {'name': 'Rohan', 'number': '9988776555', 'unread': 2},
    {'name': 'Darshan', 'number': '9988876655', 'unread': 3},
    {'name': 'Vatsal', "number": '9998776655', 'unread': 4},
    {'name': 'Aryan', 'number': '9988776633', 'unread': 5},
    {'name': 'Neer', 'number': '9988777655', 'unread': 6},
    {'name': 'Ram', 'number': '9988776355', 'unread': 7},
    {'name': 'Hari', 'number': '9988776632', 'unread': 8},
    {'name': 'Shyam', 'number': '9988776621', 'unread': 9},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              // color: Colors.black, // Set the desired background color
              child: MyCalendar(),
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            Container(
              padding: const EdgeInsets.only(left: 30),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.55,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  color: Colors.black),
              child: ListView(
                children: arrData
                    .map((value) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            leading: const Icon(
                              Icons.account_circle,
                              size: 31,
                              color: Colors.blue,
                            ),
                            title: Text(
                              value['name'].toString(),
                              style: const TextStyle(
                                  fontSize: 21, color: Colors.white),
                            ),
                            subtitle: Text(value['number'].toString()),
                            trailing: CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.green,
                                child: Text(value['unread'].toString())),
                          ),
                        ))
                    .toList(),
              ),
            )
            /*Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return ListView.builder(
                    itemCount: items.length,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    itemBuilder: (BuildContext context, int index) {
                      return Dismissible(
                        background: Container(
                          color: Colors.green,
                        ),
                        key: ValueKey<int>(items[index]),
                        onDismissed: (DismissDirection direction) {
                          setState(() {
                            items.removeAt(index);
                          });
                        },
                        child: ListTile(
                          title: Text(
                            'Item ${items[index]}',
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            )*/
          ],
        ),
      ),
    );
  }
}

class MyCalendar extends StatefulWidget {
  const MyCalendar({Key? key}) : super(key: key);

  @override
  _MyCalendarState createState() => _MyCalendarState();
}

class _MyCalendarState extends State<MyCalendar> {
  late CalendarFormat _calendarFormat;
  late DateTime _focusedDay;
  late DateTime _selectedDay;

  @override
  void initState() {
    super.initState();
    _calendarFormat = CalendarFormat.month;
    _focusedDay = DateTime.now();
    _selectedDay = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      calendarStyle: const CalendarStyle(
        outsideDaysVisible: false,
        weekendTextStyle: TextStyle(color: Colors.red),
        holidayTextStyle: TextStyle(color: Colors.green),
        selectedDecoration: BoxDecoration(
          color: Colors.deepPurple,
          shape: BoxShape.circle,
        ),
        rangeStartDecoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        weekendDecoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        weekNumberTextStyle: TextStyle(color: Colors.white),
      ),
      startingDayOfWeek: StartingDayOfWeek.monday,
      /*headerStyle: const HeaderStyle(
        formatButtonVisible: false,
        titleTextStyle: TextStyle(
            color: Colors.white),
        titleCentered: true,
        leftChevronIcon: Icon(Icons.chevron_left,
            color: Colors.white),
        rightChevronIcon: Icon(Icons.chevron_right,
            color: Colors.white),
      ),*/
      firstDay: DateTime.utc(1000, 10, 16),
      lastDay: DateTime.utc(8030, 3, 14),
      focusedDay: _focusedDay,
      selectedDayPredicate: (day) {
        return isSameDay(_selectedDay, day);
      },
      /*onDaySelected: (date, events) {
        setState(() {
          print(date.toUtc());
        });
      },*/

      onDaySelected: (selectedDay, focusedDay) {
        setState(
          () {
            _selectedDay = selectedDay;
            _focusedDay = focusedDay;
            DateTime dateTime = DateTime.parse(_selectedDay.toString());
            int day = dateTime.day;
            int month = dateTime.month;
            int year = dateTime.year;

            print("Day: $day");
            print("Month: $month");
            print("Year: $year");
            print(_selectedDay);
          },
        );
      },
      calendarFormat: _calendarFormat,
    );
  }
}
