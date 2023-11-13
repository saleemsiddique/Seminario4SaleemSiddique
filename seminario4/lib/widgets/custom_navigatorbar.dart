import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.map), label: "mapa"),
        BottomNavigationBarItem(
            icon: Icon(Icons.compass_calibration), label: "Direcciones")
      ],
      elevation: 0,
    );
  }
}
