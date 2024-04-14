import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:http/http.dart' as http;

import '../presentation/widgets/News/slideNews.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  List<dynamic> newsList = [];
  bool isLoading = false;
  String errorMessage = '';

  Future<void> getNews() async {
    setState(() {
      isLoading = true;
    });
    final String apiURL =
        'https://adamix.net/defensa_civil/def/noticias.php';
    try {
      final response = await http.get(Uri.parse(apiURL));
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        setState(() {
          newsList = jsonData["datos"];
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
    getNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          Text(
            "NOTICIAS",
            style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(239, 121, 42, 1),
              fontWeight: FontWeight.w900,
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                  top: 50.0), // Espacio adicional en la parte inferior
              child: CarouselSlider.builder(
                itemCount: newsList.length,
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.height * 0.60,
                  autoPlay: false,
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  if (newsList.isEmpty) {
                    return CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Color.fromRGBO(
                          15, 67, 116, 1)), // Color of the progress indicator
                      strokeWidth: 3,
                    );
                  } else {
                    final news = newsList[index];
                    return slide(
                      text: news["contenido"],
                      imagePath: news["foto"],
                      description: news["titulo"],
                    );
                  }
                },
              ),
            ),
          ),
        ]));
  }
}
