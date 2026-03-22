import 'package:flutter/material.dart';

class Gesturebox extends StatefulWidget {
  const Gesturebox({super.key});

  @override
  State<Gesturebox> createState() => _GestureboxState();
}

class _GestureboxState extends State<Gesturebox> {
  bool _isBlue = true;

  void _toggleColor() {
    setState(() {
      _isBlue = !_isBlue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: _toggleColor,
      child: Container(
        width: 200,
        height: 200,
        child: Center(child: Text('Nguyễn Bình Minh - 6451071047')) ,
        color: _isBlue ? Colors.blue : Colors.red,
      ),
    );
  }
}