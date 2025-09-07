import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(), // hace espacio al botón central
      notchMargin: 8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(Icons.home,
                color: _selectedIndex == 0 ? Colors.blue : Colors.grey),
            onPressed: () => _onItemTapped(0),
          ),
          const SizedBox(width: 40), // espacio para el FAB
          IconButton(
            icon: Icon(Icons.person,
                color: _selectedIndex == 1 ? Colors.blue : Colors.grey),
            onPressed: () => _onItemTapped(1),
          ),
        ],
      ),
    );
  }
}

// const _navBarItems = [
//   NavigationDestination(
//     icon: Icon(Icons.home_outlined),
//     selectedIcon: Icon(Icons.home_rounded),
//     label: 'Home',
//   ),
//   NavigationDestination(
//     icon: Icon(Icons.add_circle_outline),
//     selectedIcon: Icon(Icons.add_circle),
//     label: 'Cart',
//   ),
//   NavigationDestination(
//     icon: Icon(Icons.person_outline_rounded),
//     selectedIcon: Icon(Icons.person_rounded),
//     label: 'Profile',
//   ),
// ];
