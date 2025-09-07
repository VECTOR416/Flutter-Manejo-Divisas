import 'package:flutter/material.dart';

class CentralButton extends StatefulWidget {
  const CentralButton({super.key});

  @override
  State<CentralButton> createState() => _CentralButtonState();
}

class _CentralButtonState extends State<CentralButton> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none, // importante para que no se corte
      children: [
        // Botón principal
        FloatingActionButton(
          onPressed: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          backgroundColor: Colors.blue,
          child: const Icon(Icons.add, size: 32),
        ),

        // Botones expandidos
        if (_isExpanded) ...[
          Positioned(
            top: -70,
            child: FloatingActionButton(
              mini: true,
              onPressed: () => debugPrint("Botón arriba"),
              child: const Icon(Icons.camera),
            ),
          ),
          Positioned(
            left: -70,
            child: FloatingActionButton(
              mini: true,
              onPressed: () => debugPrint("Botón izquierda"),
              child: const Icon(Icons.image),
            ),
          ),
          Positioned(
            right: -70,
            child: FloatingActionButton(
              mini: true,
              onPressed: () => debugPrint("Botón derecha"),
              child: const Icon(Icons.settings),
            ),
          ),
        ],
      ],
    );
  }
}