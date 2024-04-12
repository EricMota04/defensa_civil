import 'package:flutter/material.dart';

import '../../../main.dart';
import '../../../pages/history_screen.dart';
import '../../../pages/members_screen.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Color.fromRGBO(239, 121, 42, 1),
                    size: 24,
                  ),
                  title: Text(
                    'Inicio',
                    style: TextStyle(
                        color: Color.fromRGBO(15, 67, 116, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 24),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyApp()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.book,
                    color: Color.fromRGBO(239, 121, 42, 1),
                    size: 24,
                  ),
                  title: Text(
                    'Historia',
                    style: TextStyle(
                        color: Color.fromRGBO(15, 67, 116, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 24),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HistoryScreen()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.emoji_people_outlined,
                    color: Color.fromRGBO(239, 121, 42, 1),
                    size: 30,
                  ),
                  title: Text(
                    'Miembros',
                    style: TextStyle(
                        color: Color.fromRGBO(15, 67, 116, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 24),
                  ),
                  onTap: () {

                    Navigator.push(context, MaterialPageRoute(builder: (context) => MembersScreen()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.add_alert,
                    color: Color.fromRGBO(239, 121, 42, 1),
                    size: 24,
                  ),
                  title: Text(
                    'Noticias',
                    style: TextStyle(
                        color: Color.fromRGBO(15, 67, 116, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 24),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.video_collection_sharp,
                    color: Color.fromRGBO(239, 121, 42, 1),
                    size: 24,
                  ),
                  title: Text(
                    'Videos',
                    style: TextStyle(
                        color: Color.fromRGBO(15, 67, 116, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 24),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.people,
                    color: Color.fromRGBO(239, 121, 42, 1),
                    size: 28,
                  ),
                  title: Text(
                    'Servicios',
                    style: TextStyle(
                        color: Color.fromRGBO(15, 67, 116, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 24),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.38,
                ),
                ListTile(
                  leading: Icon(
                    Icons.info_outline,
                    color: Color.fromRGBO(239, 121, 42, 1),
                    size: 24,
                  ),
                  title: Text(
                    'Acerca de',
                    style: TextStyle(
                        color: Color.fromRGBO(15, 67, 116, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 24),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                Container(
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.7),
                    child: Image.asset(
                      'assets/logo_defensa_civil.png',
                      fit: BoxFit.cover,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}