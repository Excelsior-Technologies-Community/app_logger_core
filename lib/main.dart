import 'package:flutter/material.dart';
import 'app_logger_core.dart';

void main() {
  // Disable logs in release mode
  AppLogger.enableLogs = !bool.fromEnvironment('dart.vm.product');

  AppLogger.log(
    'Application started',
    tag: 'MAIN',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppLogger.log(
      'MyApp build called',
      level: LogLevel.debug,
      tag: 'LIFECYCLE',
    );

    return MaterialApp(
      title: 'Logger Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow.shade700),
      ),
      home: const MyHomePage(title: 'Logger Demo Home'),
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
  int _counter = 0;

  @override
  void initState() {
    super.initState();

    AppLogger.log(
      'Home page initialized',
      tag: 'STATE',
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter++;

      AppLogger.log(
        'Counter value = $_counter',
        level: LogLevel.success,
        tag: 'COUNTER',
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    AppLogger.log(
      'Home page build',
      level: LogLevel.debug,
      tag: 'BUILD',
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
