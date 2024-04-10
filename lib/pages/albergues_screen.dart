import 'package:flutter/material.dart';

class AlberguesScreen extends StatelessWidget {
  const AlberguesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Text('Listado de albergues', style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(15, 67, 116, 1)
                ),
                ),
              ],
            ),
            Row(
              children: [
                Text('Hola')
              ],
            )
          ],

        ),
      ),
    );
  }
}
