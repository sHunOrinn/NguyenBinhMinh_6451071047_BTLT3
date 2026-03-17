import 'package:flutter/material.dart';

class Gesturebox extends StatefulWidget {
  const Gesturebox({super.key});

  @override
  State<Gesturebox> createState() => _GestureboxState();
}

class _GestureboxState extends State<Gesturebox> {
  String press = 'Press and hold me';

  void _press(String _press) {
    setState(() {
      press = _press;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () => _press('Long press detected'),
      child: Container(
        width: 200,
        height: 200,
      ),
    );
  }
}