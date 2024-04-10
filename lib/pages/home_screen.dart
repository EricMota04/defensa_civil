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
            slide(imagePath: 'assets/noticia1.jpeg'),
            slide(imagePath: 'assets/noticia2.jpeg'), //Aquí puedes agregar cuantas imagenes quieres
          ]
        ),
      ),
    );
  }
}
