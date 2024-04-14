import 'dart:convert';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:defensa_civil/presentation/widgets/AppBar/defensa_appbar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:defensa_civil/presentation/widgets/Home/network_slide.dart';

import '../presentation/widgets/News/slideNews.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({
    super.key,
  });

  @override
  State<ServicesScreen> createState() => ServicesDesign();
}

class ServicesDesign extends State<ServicesScreen> {
  List<dynamic> servicesList = [];

  Future<void> getServices() async {
    final String apiURL = 'https://adamix.net/defensa_civil/def/servicios.php';
    try {
      final response = await http.get(Uri.parse(apiURL));
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        setState(() {
          servicesList = jsonData["datos"];
        });
      } else {
        print('Error al obtener los datos: ${response.statusCode}');
      }
    } catch (e) {
      print('Error al obtener los datos: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    getServices();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefensaAppBar(context: context),
      body: Column(
        children: [
          Text(
            "Nuestros Servicios",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.026,
              color: const Color.fromRGBO(239, 121, 42, 1),
              fontWeight: FontWeight.w900,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 50,
              ),
              child: CarouselSlider(
                items: servicesList.map((service) {
                  return Slidenetwork(
                    imagePath: service["foto"],
                    description: service["nombre"],
                    text: service["descripcion"],
                  );
                }).toList(),
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.height * 0.45,
                  autoPlay: false,
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
