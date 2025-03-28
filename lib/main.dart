import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/views/counter_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX MVVM Example',
      home: CounterView(),
    );
  }
}
