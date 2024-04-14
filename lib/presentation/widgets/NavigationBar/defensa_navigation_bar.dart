import 'package:flutter/material.dart';

class DefensaNavigationBar extends StatelessWidget {


  final Function(int) onTabTapped;
  final int index;

  const DefensaNavigationBar({required this.onTabTapped, required this.index});


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: onTabTapped,
      selectedItemColor: Color.fromRGBO(239, 121, 42, 1),
      unselectedItemColor: Color.fromRGBO(15, 67, 116, 1),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.location_on_outlined),
          label: 'Albergues',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people_alt_outlined),
          label: 'Login',
        ),
      ],
    );
  }
}
