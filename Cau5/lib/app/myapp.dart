import 'package:cau5/view/homeview.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Pointer Events-Nguyễn Bình Minh - 6451071047',
      debugShowCheckedModeBanner: false,
      home: const Homeview(),
    );
  }
}