import 'package:atomic_state/atoms/counter.dart';
import 'package:rx_notifier/rx_notifier.dart';

class CounterReducer extends RxReducer {
  CounterReducer() {
    on(() => [incrementAction], _incrementReducer);
    on(() => [decrementAction], _decrementReducer);
  }

  void _incrementReducer() => counterState.value++;
  void _decrementReducer() => counterState.value--;
}
