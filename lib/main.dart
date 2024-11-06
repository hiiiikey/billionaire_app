import 'package:flutter/material.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double balance = 0;
  addMoney() {
    setState(
      () {
        balance += 100;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Billionaire App',
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
          height: double.infinity,
          width: double.infinity,
          color: Colors.blueGrey[700],
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Your balance is:',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      '$balance',
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black54,
                      minimumSize: const Size(double.infinity, 0),
                    ),
                    onPressed: () {
                      addMoney();
                    },
                    child: const Text('Add Money')),
              )
            ], // Children go here
          ),
        ),
      ),
    );
  }
}
