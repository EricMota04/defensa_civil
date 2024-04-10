import 'package:defensa_civil/pages/albergues_screen.dart';
import 'package:defensa_civil/pages/home_screen.dart';
import 'package:defensa_civil/presentation/widgets/AppBar/defensa_appbar.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'SanFrancisco'),
      home: Scaffold(
        appBar: DefensaAppBar(context: context),
        body: IndexedStack(
          index: _currentIndex,
          children: [
            HomeScreen(),
            AlberguesScreen()
          ],
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: _onTabTapped,
            selectedItemColor: Color.fromRGBO(239, 121, 42, 1),
            unselectedItemColor: Color.fromRGBO(15, 67, 116, 1),
            selectedLabelStyle: TextStyle(color: Colors.red),
            unselectedLabelStyle: TextStyle(color: Colors.white),
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
          ),
        ),
      ),
    );
  }
}
