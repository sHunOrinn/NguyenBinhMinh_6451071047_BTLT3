import 'package:flutter/material.dart';

class Gesturebox extends StatelessWidget {
  const Gesturebox({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('You tapped the box!')),
        );
      },
      child: Container(
        width: 200,
        height: 200,
        color: Colors.blueAccent,
        alignment: Alignment.center,
        child: const Text(
          'Tap the box\nNguyễn Bình Minh-6451071047',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}