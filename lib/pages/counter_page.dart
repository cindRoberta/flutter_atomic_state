import 'package:atomic_state/pages/other_page.dart';
import 'package:flutter/material.dart';
//import 'package:rx_notifier/rx_notifier.dart';

import '../atoms/counter.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? super.key});

  @override
  Widget build(BuildContext context) {
    //final value = context.select(() => counterState.value);
    print('rerender ${counterState.value}');
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const OtherPage(),
              ),
            );
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                countText,
                style: const TextStyle(fontSize: 40),
              ),
              ValueListenableBuilder(
                valueListenable: counterState,
                builder: (_ctx, value, _) =>
                  Text(
                    '$value',
                    style: const TextStyle(fontSize: 23),
                  ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementAction,
        child: const Icon(Icons.add),
      ),
    );
  }
}
