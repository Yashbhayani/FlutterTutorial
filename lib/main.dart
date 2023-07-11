import 'package:flutter/material.dart';

final List<int> _items = List<int>.generate(51, (int index) => index);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //      theme: ThemeData.dark(),
      home: const MyHomePage(title: 'Home Page'),
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
  bool shadowColor = false;
  double? scrolledUnderElevation;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a SnackBar!')));
            },
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  final ButtonStyle style = TextButton.styleFrom(
                    foregroundColor: Theme.of(context).colorScheme.onPrimary,
                  );
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Next page'),
                      actions: [
                        TextButton(
                          style: style,
                          onPressed: () => ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                                  content: Text('This is a Action 1!'))),
                          child: const Text('Action 1'),
                        ),
                        TextButton(
                          style: style,
                          onPressed: () => ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                                  content: Text('This is a Action 2!'))),
                          child: const Text('Action 2'),
                        ),
                      ],
                    ),
                    body: GridView.builder(
                      itemCount: _items.length,
                      padding: const EdgeInsets.all(8.0),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1.0,
                        mainAxisSpacing: 10.0,
                        crossAxisSpacing: 10.0,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        if (index == 0) {
                          return Center(
                            child: Text(
                              'Scroll to see the Appbar in effect.',
                              style: Theme.of(context).textTheme.labelLarge,
                              textAlign: TextAlign.center,
                            ),
                          );
                        }
                        return Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: _items[index].isOdd
                                ? oddItemColor
                                : evenItemColor,
                          ),
                          child: Text('Item $index'),
                        );
                      },
                    ),
                    bottomNavigationBar: BottomAppBar(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: OverflowBar(
                          overflowAlignment: OverflowBarAlignment.center,
                          alignment: MainAxisAlignment.center,
                          overflowSpacing: 5.0,
                          children: <Widget>[
                            ElevatedButton.icon(
                              onPressed: () {
                                setState(() {
                                  shadowColor = !shadowColor;
                                });
                              },
                              icon: Icon(
                                shadowColor
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                              label: const Text('shadow color'),
                            ),
                            const SizedBox(width: 5),
                            ElevatedButton(
                              onPressed: () {
                                if (scrolledUnderElevation == null) {
                                  setState(() {
                                    scrolledUnderElevation = 4.0;
                                  });
                                } else {
                                  setState(() {
                                    scrolledUnderElevation =
                                        scrolledUnderElevation! + 1.0;
                                  });
                                }
                              },
                              child: Text(
                                'scrolledUnderElevation: ${scrolledUnderElevation ?? 'default'}',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ));
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'This is the next page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
