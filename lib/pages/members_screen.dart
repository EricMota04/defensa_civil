import 'package:carousel_slider/carousel_slider.dart';
import 'package:defensa_civil/presentation/widgets/Members/member_slide.dart';
import 'package:flutter/material.dart';

class MembersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(
            bottom: 50.0), // Espacio adicional en la parte inferior
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
              MembersSlide(
                  imagePath: 'assets/juanrosario.jpeg',
                  name: 'Juan Rosario',
                  charge: 'Palomo'),
              MembersSlide(
                  imagePath: 'assets/imagen3.jpeg',
                  name: 'Palomo 2',
                  charge: 'Palomear'),
              MembersSlide(
                  imagePath: 'assets/noticia1.jpeg',
                  name: 'Palomo 3',
                  charge: 'Ser palomo')
            ]),
      ),
    );
  }
}
