import 'package:flutter/material.dart';
//import 'package:rx_notifier/rx_notifier.dart';

import '../atoms/counter.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({Key? super.key});

  @override
  Widget build(BuildContext context) {
    //final value = context.select(() => counterState.value);
    print('rerender ${counterState.value}');
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
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
                )
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: decrementAction,
        child: const Icon(Icons.remove),
      ),
    );
  }
}