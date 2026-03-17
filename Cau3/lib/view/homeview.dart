import 'package:cau3/widget/gesturebox.dart';
import 'package:flutter/material.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tap Demo'),
      ),
      body: const Center(
        child: Gesturebox(),
      ),
    );
  }
}