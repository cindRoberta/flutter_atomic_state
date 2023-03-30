import 'package:atomic_state/pages/counter_page.dart';
import 'package:atomic_state/reducers/counter_reducer.dart';
import 'package:flutter/material.dart';
//import 'package:rx_notifier/rx_notifier.dart';

//late final CounterReducer counterReducer;

void main() {
  //final CounterReducer counterReducer = CounterReducer();
  CounterReducer();
  //runApp(const RxRoot(child: MyApp()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DefaultTextStyle(
          style: TextStyle(fontSize: 50), child: CounterPage()),
    );
  }
}
