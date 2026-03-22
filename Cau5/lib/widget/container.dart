import 'package:flutter/material.dart';

class TapButton extends StatefulWidget {
  const TapButton({super.key});

  @override
  State<TapButton> createState() => _TapButtonState();
}

class _TapButtonState extends State<TapButton> {
  double? _xPosition;
  double? _yPosition;

  void _onPointerDown(PointerDownEvent event) {
    setState(() {
      _xPosition = event.position.dx;
      _yPosition = event.position.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Listener(
          onPointerDown: _onPointerDown,
          child: Container(
            width: 400,
            height: 600,
            decoration: BoxDecoration(
              color: Colors.blue.shade200,
              border: Border.all(
                color: Colors.blue,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Chạm vào Container',
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
                const SizedBox(height: 40),
                if (_xPosition != null && _yPosition != null)
                  Column(
                    children: [
                      Text(
                        'Tọa độ X: ${_xPosition?.toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Tọa độ Y: ${_yPosition?.toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                else
                  const Text(
                    'Chưa có tọa độ',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 30),
        Text(
          'Nguyễn Bình Minh - 6451071047',
          style: const TextStyle(fontSize: 26, color: Colors.black54),
        ),
      ],
    );
  }
}