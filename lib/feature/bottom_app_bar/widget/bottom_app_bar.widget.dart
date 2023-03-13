import 'package:flutter/material.dart';

// stfull in real
class BottomAppBarWidget extends StatelessWidget {
  const BottomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: const Color(0xFF141518),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/image/tiktok_add.png',
              height: 25,
            ),
            label: 'Add',
          ),
        ]);
  }
}
