import 'package:defensa_civil/presentation/widgets/AppBar/defensa_appbar.dart';
import 'package:defensa_civil/presentation/widgets/mapa/mapaview.dart';
import 'package:flutter/material.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  _MapaAlbergues createState() => _MapaAlbergues();
}

class _MapaAlbergues extends State<MapaAlbergues> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefensaAppBar(context: context),
      body: MapaAlbergues()
    );
  }
}