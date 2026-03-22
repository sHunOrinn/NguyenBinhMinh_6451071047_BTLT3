import 'package:flutter/material.dart';

class Gesturebox extends StatefulWidget {
  const Gesturebox({super.key});

  @override
  State<Gesturebox> createState() => _GestureboxState();
}

class _GestureboxState extends State<Gesturebox> {
  void _showLongPressSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Long press detected'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: _showLongPressSnackBar,
      child: Card(
        elevation: 4,
        child: SizedBox(
          width: 220,
          height: 120,
          child: Center(
            child: Text(
              'Press and hold me\nNguyễn Bình Minh - 6451071047',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ),
      ),
    );
  }
}