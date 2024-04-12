import 'package:defensa_civil/pages/albergues_screen.dart';
import 'package:defensa_civil/pages/medidas_preventivas.dart';
import 'package:flutter/material.dart';


class AlberguesDrawer extends StatelessWidget {
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
                    Icons.house,
                    color: Color.fromRGBO(239, 121, 42, 1),
                    size: 26,
                  ),
                  title: Text(
                    'Albergues',
                    style: TextStyle(
                        color: Color.fromRGBO(15, 67, 116, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 24),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AlberguesScreen()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.map,
                    color: Color.fromRGBO(239, 121, 42, 1),
                    size: 26,
                  ),
                  title: Text(
                    'Vista de mapa',
                    style: TextStyle(
                        color: Color.fromRGBO(15, 67, 116, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 26),
                  ),
                  onTap: () {
                    /* Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HistoryScreen()),
                    );*/
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.warning,
                    color: Color.fromRGBO(239, 121, 42, 1),
                    size: 26,
                  ),
                  title: Text(
                    'Medidas preventivas',
                    style: TextStyle(
                        color: Color.fromRGBO(15, 67, 116, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 24),
                  ),
                  onTap: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MedidasScreen()),
                    );
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.58,
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
