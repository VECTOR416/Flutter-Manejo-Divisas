import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CustomNotchedShape(offsetY: 30),
      notchMargin: 6,
      color: Color(0xFF5337F5),
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        child: Row(
          children: <Widget>[
            TextButton.icon(
              style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Color(0xFF5d52f8),
            ),
              onPressed: () {},
              icon: const Icon(Icons.stacked_bar_chart_sharp, size: 18),
              label: const Text('Estadisticas', style: TextStyle(fontSize: 14)),
            ),
            const Spacer(),
            TextButton.icon(
              style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Color(0xFF5d52f8),
            ),
              onPressed: () {},
              icon: const Icon(Icons.assignment_outlined, size: 18),
              label: const Text('Presupuestos', style: TextStyle(fontSize: 14)),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomNotchedShape extends NotchedShape {
  final double offsetY;

  const CustomNotchedShape({this.offsetY = 0});

  @override
  Path getOuterPath(Rect host, Rect? guest) {
    if (guest == null || guest.isEmpty) {
      return Path()..addRect(host);
    }

    // Ajustamos la posición del notch según offsetY
    final adjustedGuest = guest.shift(Offset(0, offsetY));

    // Usamos la muesca circular por defecto
    return CircularNotchedRectangle().getOuterPath(host, adjustedGuest);
  }
}

