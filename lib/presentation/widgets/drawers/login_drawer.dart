import 'package:flutter/material.dart';

import '../../../pages/history_screen.dart';

class LoginDrawer extends StatelessWidget {
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

              ],
            ),
          ),
        ],
      ),
    );
  }
}