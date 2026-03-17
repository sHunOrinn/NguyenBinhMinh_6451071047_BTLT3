import 'package:cau1/view/homeview.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gesture Demo',
      debugShowCheckedModeBanner: false,
      home: const Homeview(),
    );
  }
}