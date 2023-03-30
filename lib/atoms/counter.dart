import 'package:flutter/foundation.dart';
import 'package:rx_notifier/rx_notifier.dart';

// atoms
final counterState = ValueNotifier<int>(0);

// computeds
String get countText => counterState.value.isEven ? 'Even' : 'Odd';

// actions
final incrementAction = RxAction();
final decrementAction = RxAction();
