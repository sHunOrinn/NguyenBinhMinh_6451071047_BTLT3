import 'package:cau5/widget/container.dart';
import 'package:flutter/material.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pointer Events'),
      ),
      body: const Center(
        child: TapButton(),
      ),
    );
  }
}