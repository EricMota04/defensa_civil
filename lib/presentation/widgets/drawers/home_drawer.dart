import 'package:defensa_civil/pages/about_screen.dart';
import 'package:defensa_civil/pages/news.dart';
import 'package:defensa_civil/pages/services_screen.dart';
import 'package:defensa_civil/pages/videos_screen.dart';
import 'package:flutter/material.dart';

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
                const SizedBox(
                  height: 30,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.book,
                    color: Color.fromRGBO(239, 121, 42, 1),
                    size: 24,
                  ),
                  title: const Text(
                    'Historia',
                    style: TextStyle(
                        color: Color.fromRGBO(15, 67, 116, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 24),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HistoryScreen()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.emoji_people_outlined,
                    color: Color.fromRGBO(239, 121, 42, 1),
                    size: 30,
                  ),
                  title: const Text(
                    'Miembros',
                    style: TextStyle(
                        color: Color.fromRGBO(15, 67, 116, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 24),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MembersScreen()));
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.add_alert,
                    color: Color.fromRGBO(239, 121, 42, 1),
                    size: 24,
                  ),
                  title: const Text(
                    'Noticias',
                    style: TextStyle(
                        color: Color.fromRGBO(15, 67, 116, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 24),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => News()));
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.video_collection_sharp,
                    color: Color.fromRGBO(239, 121, 42, 1),
                    size: 24,
                  ),
                  title: const Text(
                    'Videos',
                    style: TextStyle(
                        color: Color.fromRGBO(15, 67, 116, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 24),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VideosScreen()));
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.people,
                    color: Color.fromRGBO(239, 121, 42, 1),
                    size: 28,
                  ),
                  title: const Text(
                    'Servicios',
                    style: TextStyle(
                        color: Color.fromRGBO(15, 67, 116, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 24),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ServicesScreen()));
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.38,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.info_outline,
                    color: Color.fromRGBO(239, 121, 42, 1),
                    size: 24,
                  ),
                  title: const Text(
                    'Acerca de',
                    style: TextStyle(
                        color: Color.fromRGBO(15, 67, 116, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 24),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AboutScreen()));
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
