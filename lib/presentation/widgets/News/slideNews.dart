import 'package:flutter/material.dart';

class slide extends StatelessWidget {
  final String imagePath;
  final String description;
  final String text;

  const slide({required this.imagePath, required this.description, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(15, 67, 116, 1), // Color de fondo azul
          borderRadius: BorderRadius.circular(50.0), // Bordes redondeados
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5), // Color de la sombra
              spreadRadius: 5, // Difusión de la sombra
              blurRadius: 7, // Desenfoque de la sombra
              offset: const Offset(0, 4), // Offset de la sombra (x, y)
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1.0, maxHeight: 1.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: Text(
                  description,
                  style: const TextStyle(
                    fontSize: 20,
                    color:  Color.fromRGBO(239, 121, 42, 1),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              GestureDetector(
                onTap: () {
                  _showImagePopup(context);
                },
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(50.0), // Bordes redondeados
                  child: Image.network(
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

  void _showImagePopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color.fromRGBO(15, 67, 116, 1),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(239, 121, 42, 1),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.network(
                    imagePath,
                    fit: BoxFit
                        .contain, // Ajustar imagen al contenedor del AlertDialog
                  ),
                ),
                Text(text,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,),
                )
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Cerrar el AlertDialog
              },
              child: const Text(
                'Cerrar',
                style:  TextStyle(color: Color.fromRGBO(239, 121, 42, 1)),
              ),
            ),
          ],
        );
      },
    );
  }
}
