import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: index,
        onTap: (int i) {
          setState(() {});
          index = i;
        },
        // La propiedad type: type: BottomNavigationBarType.fixed nos permite agregar mas iconos en el navbar
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromARGB(176, 154, 13, 13),
        iconSize: 24,
        selectedFontSize: 12.5,
        unselectedFontSize: 12,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.file_copy), label: 'Tramites'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notificacion'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined), label: 'Calendario'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil')
        ]);
  }
}
