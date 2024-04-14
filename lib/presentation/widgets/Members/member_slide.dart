import 'package:flutter/material.dart';

class MembersSlide extends StatelessWidget {
  final String imagePath;
  final String name;
  final String charge;

  const MembersSlide(
      {required this.imagePath, required this.name, required this.charge});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color.fromRGBO(15, 67, 116, 1),
          borderRadius: BorderRadius.circular(50.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 4),
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: TextStyle(
                  color: Color.fromRGBO(239, 121, 42, 1),
                  fontSize: 26,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Container(
                  constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height * 0.4),
                  child: Image.network(
                    imagePath,
                    fit: BoxFit.cover, // La imagen se ajusta al contenedor
                  ),
                )),
            Text(
              charge,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
