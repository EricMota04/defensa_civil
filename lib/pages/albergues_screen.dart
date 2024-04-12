import 'package:defensa_civil/presentation/widgets/AlberguesRows/Albergue.dart';
import 'package:defensa_civil/presentation/widgets/AppBar/defensa_appbar.dart';
import 'package:defensa_civil/presentation/widgets/drawers/albergues_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlberguesScreen extends StatelessWidget {
  const AlberguesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefensaAppBar(context: context),
      drawer: AlberguesDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Listado de albergues',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(15, 67, 116, 1),
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Column(
              //Aqui debajo van los albergues tomados de la api, posiblemente
              // recorriendolo con un foreach
              children: [
                AlbergueRow(
                    title: 'Polideportivo San Carlos',
                    city: 'Distrito Nacional',
                    phoneNumber: '(809) 308-3411'),
                AlbergueRow(
                    title: 'Prueba de nombre',
                    city: 'Otra ciudad',
                    phoneNumber: '(809) 555-3411')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
