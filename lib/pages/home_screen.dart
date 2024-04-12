import 'package:defensa_civil/presentation/widgets/Home/slide.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(bottom: 50.0), // Espacio adicional en la parte inferior
        child: CarouselSlider(
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height * 0.70,
            autoPlay: false,
            enlargeCenterPage: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
          items: [
            slide(imagePath: 'assets/accion1.jpeg', description: "Defensa Civil recupera los cuerpos de tres personas desaparecidas"),
            slide(imagePath: 'assets/accion2.jpeg', description: "Director Defensa Civil encabeza búsqueda de tres personas desaparecidas",), //Aquí puedes agregar cuantas imagenes quieres
          ]
        ),
      ),
    );
  }
}
