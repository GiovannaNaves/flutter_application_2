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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // Fields in a Widget subclass are always marked "final".
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter1 = 0;
  int _counter2 = 0;

  void _incrementCounter1() {
    setState(() {
      _counter1++;
    });
  }
    void _incrementCounter2() {
    setState(() {
      _counter2++;
    });

  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called
    int soma = _counter1 + _counter2;
    int produto = _counter1 * _counter2;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(

          //Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter1',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter2',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Text(
              'Soma:',
            ),
            Text(
              '$soma',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
           const Text(
              'Produto:',
            ),
            Text(
              '$produto',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children:[
          FloatingActionButton(
            onPressed: _incrementCounter1,
            tooltip: 'Increment 1',
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
            onPressed: _incrementCounter2,
            tooltip: 'Increment 2',
            child: const Icon(Icons.add),
          ),
        ],
      )
    );
  }
}
