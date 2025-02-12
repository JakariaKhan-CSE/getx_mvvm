import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/viewmodels/counter_viewmodel.dart';

class CounterView extends StatelessWidget {
  // access data from another screen easily
  final CounterViewModel counterViewModel = Get.put(CounterViewModel());

  CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('GetX MVVM Example'),
          centerTitle: true,
        ),
        body: Center(
          child: GetBuilder<CounterViewModel>(
            // be careful <CounterViewModel>    GetBuilder<CounterViewModel>
            builder: (controller) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Counter Value:',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  '${controller.count}',
                  style: const TextStyle(
                      fontSize: 40, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          controller.increment();
                        },
                        child: const Text('Increment')),
                    const SizedBox(width: 10),
                    ElevatedButton(
                        onPressed: () {
                          controller.reset();
                        },
                        child: const Text('Reset'))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
