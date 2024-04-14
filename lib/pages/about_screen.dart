import 'package:carousel_slider/carousel_slider.dart';
import '../presentation/widgets/About/About_slider.dart';
import '../presentation/widgets/AppBar/defensa_appbar.dart';
import '../presentation/widgets/Home/slide.dart';
import 'package:flutter/material.dart';
import '../presentation/widgets/drawers/home_drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: DefensaAppBar(context: context),
      drawer: HomeDrawer(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(
              bottom: 50.0), // Additional space at the bottom
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
            items: const [
              SlideAbout(imagePath: 'assets/Angel.jpg', name: "Angel Ernesto Rivas Hernández", Enrollnumber: "2021-2189", url: 'https://www.linkedin.com/in/angel-ernesto-rivas-hernández-30bba82b6/',),
              SlideAbout(imagePath: 'assets/Carlos.jpg', name: "Carlos Gabriel Sanchez Delgado", Enrollnumber: "2021-2124", url: "https://www.linkedin.com/in/carlos-gabriel-sánchez-delgado-435362229"), //Aquí puedes agregar cuantas imagenes quieres
              SlideAbout(imagePath: 'assets/Eric.jpg', name: "Eric Manuel Mota Ramon", Enrollnumber: "2021-1976", url: "https://www.linkedin.com/in/eric-manuel-mota-ramon-683145224/"), //Aquí puedes agregar cuantas imagenes quieres
              SlideAbout(imagePath: 'assets/Frank.jpg', name: "Frank Junior Reyes Batista", Enrollnumber: "2021-1797", url: "https://www.linkedin.com/in/frank-junior-reyes-batista-584537224/"), //Aquí puedes agregar cuantas imagenes quieres
            ],
          ),
        ),
      ),
    );
  }
}
