import 'package:flutter/material.dart';

class TapButton extends StatefulWidget {
  const TapButton({super.key});

  @override
  State<TapButton> createState() => _TapButtonState();
}

class _TapButtonState extends State<TapButton> {
  int count = 0;

  void _toggleColor() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Tap count: $count\nNguyễn Bình Minh-6451071047',
          style: const TextStyle(fontSize: 40, color: Colors.black),
        ),
        const SizedBox(height: 40),
        ElevatedButton(
          onPressed: _toggleColor,
          child: const Text(
            'Tap Here',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ],
    );
  }
}