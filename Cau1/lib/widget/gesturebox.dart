import 'package:flutter/material.dart';

class Gesturebox extends StatefulWidget {
  const Gesturebox({super.key});

  @override
  State<Gesturebox> createState() => _GestureboxState();
}

class _GestureboxState extends State<Gesturebox> {
  String _gesture = '';

  void _updateGesture(String gesture) {
    setState(() {
      _gesture = gesture;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _updateGesture('You tapped the box!'),
      child: Container(
        width: 200,
        height: 200,
        color: Colors.blueAccent,
        alignment: Alignment.center,
        child: Text(
          _gesture,
          style: const TextStyle(color: Colors.white, fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}