import 'package:defensa_civil/pages/albergues_screen.dart';
import 'package:defensa_civil/pages/home_screen.dart';

import 'package:defensa_civil/pages/register_screen.dart';
import 'package:defensa_civil/pages/services_screen.dart';
import 'package:defensa_civil/presentation/widgets/NavigationBar/DefensaNavigationBar.dart';

import 'package:defensa_civil/pages/news.dart';
import 'package:defensa_civil/pages/videos_screen.dart';

import 'package:defensa_civil/pages/medidas_preventivas.dart';
import 'package:defensa_civil/pages/members_screen.dart';
import 'package:defensa_civil/pages/register_screen.dart';

import 'package:defensa_civil/presentation/widgets/AppBar/defensa_appbar.dart';
import 'package:defensa_civil/pages/login_screen.dart';

import 'package:flutter/material.dart';

void main() {
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
      theme: ThemeData(
        fontFamily: 'SanFrancisco',
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Color.fromRGBO(239, 121, 42, 1)),
        ),
        drawerTheme: DrawerThemeData(
          backgroundColor: Color.fromRGBO(220, 220, 220, 1.0),
        ),
      ),
      home: Navigator(
        // Wrap your Scaffold with Navigator
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
            builder: (context) => Scaffold(
              body: IndexedStack(
                index: _currentIndex,
                children: [
                  HomeScreen(),
                  AlberguesScreen(),
                  LoginScreen(),
                ],
              ),
              bottomNavigationBar: DefensaNavigationBar(
                index: _currentIndex,
                onTabTapped: _onTabTapped,
              ),
            ),
          );
        },
      ),
    );
  }
}

class RegisterDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text('Register Drawer Item 1'),
            onTap: () {
              // Handle item tap
            },
          ),
          ListTile(
            title: Text('Register Drawer Item 2'),
            onTap: () {
              // Handle item tap
            },
          ),
          // Add more items as needed
        ],
      ),
    );
  }
}
