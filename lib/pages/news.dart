import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../presentation/widgets/Home/slide.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<String> images = [
    'assets/noticia1.jpeg',
    'assets/noticia2.jpeg',
    // Añade las rutas de tus imágenes aquí
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(bottom: 50.0), // Espacio adicional en la parte inferior
        child: CarouselSlider(
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height * 0.45,
            autoPlay: false,
            enlargeCenterPage: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
          items: [
            slide(imagePath: 'assets/noticia1.jpeg'),
            slide(imagePath: 'assets/noticia2.jpeg'),
          ]
        ),
      ),
    );
  }
}