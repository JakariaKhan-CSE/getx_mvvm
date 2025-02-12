import 'package:get/get.dart';
import 'package:getx_mvvm/models/counter_model.dart';

class CounterViewModel extends GetxController {
  final CounterModel _counterModel = CounterModel();

  // Getter to access the count
  int get count => _counterModel.count;

  // Increment the counter
  void increment() {
    _counterModel.count++;
    update(); // Notifies listeners
    // if avoid not show updated data on UI
  }

  // Reset the counter
  void reset() {
    _counterModel.count = 0;
    update(); // Notifies listeners
  }
}
