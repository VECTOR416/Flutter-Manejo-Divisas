import 'package:flutter/material.dart';

class CentralButton extends StatefulWidget {
  const CentralButton({super.key});

  @override
  State<CentralButton> createState() => _CentralButtonState();
}

class _CentralButtonState extends State<CentralButton> {
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, 30),
      child: FloatingActionButton(
        backgroundColor: Color(0xFF5d52f8),
        shape: const CircleBorder(),
        onPressed: () {},
        tooltip: 'Create',
        child: const Icon(Icons.add, size: 36, color: Colors.white),
      ),
    );
  }
}
