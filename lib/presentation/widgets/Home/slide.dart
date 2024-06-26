import 'package:flutter/material.dart';

class slide extends StatelessWidget {
  final String imagePath;
  final String description;

  const slide({required this.imagePath, required this.description});

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
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Text(
                    description,
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(239, 121, 42, 1),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0), // Bordes redondeados
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover, // La imagen se ajusta al contenedor
                    ),
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