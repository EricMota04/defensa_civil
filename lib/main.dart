import 'package:defensa_civil/pages/albergues_screen.dart';
import 'package:defensa_civil/pages/home_screen.dart';
import 'package:defensa_civil/pages/register_screen.dart';
import 'package:defensa_civil/presentation/widgets/AppBar/defensa_appbar.dart';
import 'package:defensa_civil/presentation/widgets/NavigationBar/DefensaNavigationBar.dart';
import 'package:defensa_civil/presentation/widgets/drawers/home_drawer.dart';
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

  Widget _buildDrawer(BuildContext context) {
    switch (_currentIndex) {
      case 0:
        return HomeDrawer();
      case 1:
        return AlberguesDrawer();
      case 2:
        return RegisterDrawer();
      default:
        return HomeDrawer(); // Default drawer
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'SanFrancisco',
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Color.fromRGBO(239, 121, 42, 1)), // Change icon color here
        ),
        drawerTheme: DrawerThemeData(
          backgroundColor: Color.fromRGBO(220, 220, 220, 1.0),

        )
      ),
      home: Scaffold(
        appBar: DefensaAppBar(context: context),
        body: IndexedStack(
          index: _currentIndex,
          children: [
            HomeScreen(),
            AlberguesScreen(),
            RegisterScreen(),
          ],
        ),
        drawer: _buildDrawer(context),
        bottomNavigationBar: DefensaNavigationBar(
          index: _currentIndex,
          onTabTapped: _onTabTapped,
        )
      ),
    );
  }
}



class AlberguesDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text('Albergues Drawer Item 1'),
            onTap: () {
              // Handle item tap
            },
          ),
          ListTile(
            title: Text('Albergues Drawer Item 2'),
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
