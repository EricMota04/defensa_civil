import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:defensa_civil/presentation/widgets/AppBar/defensa_appbar.dart';
import 'package:defensa_civil/presentation/widgets/Medidas/medidas_slide.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MedidasScreen extends StatefulWidget {
  const MedidasScreen({super.key});

  @override
  State<MedidasScreen> createState() => _MedidasScreenState();
}

class _MedidasScreenState extends State<MedidasScreen> {
  List<dynamic> medidasList = [];
  bool isLoading = false;
  String errorMessage = '';

  Future<void> getMedidas() async {
    setState(() {
      isLoading = true;
    });
    final String apiURL =
        'https://adamix.net/defensa_civil/def/medidas_preventivas.php';
    try {
      final response = await http.get(Uri.parse(apiURL));
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        setState(() {
          medidasList = jsonData["datos"];
          isLoading = false;
        });
      } else {
        setState(() {
          errorMessage = 'Error al obtener los datos: ${response.statusCode}';
          isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        errorMessage = 'Error al obtener los albergues: $e';
        isLoading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getMedidas();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: DefensaAppBar(context: context),
        body: Center(
          child: Padding(
            padding: EdgeInsets.only(
                bottom: 50.0), // Espacio adicional en la parte inferior
            child: CarouselSlider.builder(
              itemCount: medidasList.length,
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.80,
                autoPlay: false,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
              itemBuilder: (BuildContext context, int index, int realIndex) {
                if (medidasList.isEmpty) {
                  return CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Color.fromRGBO(
                        15, 67, 116, 1)), // Color of the progress indicator
                    strokeWidth: 3,
                  );
                } else {
                  final medidas = medidasList[index];
                  return MedidasSlide(
                    title: medidas["titulo"],
                    info: medidas["descripcion"],
                    image: medidas["foto"],
                  );
                }
              },
            ),
          ),
        ));
  }
}
