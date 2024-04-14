import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

class SlideAbout extends StatelessWidget {
  final String imagePath;
  final String name;
  final String Enrollnumber;
  final String url;

  const SlideAbout(
      {required this.imagePath,
      required this.name,
      required this.Enrollnumber,
      required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color.fromRGBO(15, 67, 116, 1), // Color de fondo azul
          borderRadius: BorderRadius.circular(50.0), // Bordes redondeados
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5), // Color de la sombra
              spreadRadius: 5, // Difusión de la sombra
              blurRadius: 7, // Desenfoque de la sombra
              offset: Offset(0, 4), // Offset de la sombra (x, y)
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Container(
          constraints: BoxConstraints(maxWidth: 1.0, maxHeight: 1.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () async{
                        await launch(
                          url
                        );
                      },
                      child: Text(
                        name,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(239, 121, 42, 1),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Text(
                      Enrollnumber,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(239, 121, 42, 1),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Container(
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(50.0), // Bordes redondeados
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover, // La imagen se ajusta al contenedor
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
