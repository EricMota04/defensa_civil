import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../presentation/widgets/News/slideNews.dart';

class News extends StatelessWidget {
  News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Column(
      children: [
        SizedBox(height: MediaQuery.of(context).padding.top,),
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
            child: CarouselSlider(
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
                items: [
                  slide(
                    imagePath: 'assets/noticia1.jpeg',
                    description:
                        "Director Defensa Civil expresa solidaridad a familiares de fallecidos",
                    text:
                        "Santo Domingo.-  El presidente de la Comisión Nacional de Emergencias (CNE) y director ejecutivo de la Defensa Civil expresó este lunes su pesar por la muerte de José Antonio Batista (Jochy) y del joven Luisinky Mojica, quienes estaban desaparecidos desde el pasado viernes, tras registrarse fuertes precipitaciones en el Gran Santo Domingo.\r\n\r\nA través de un mensaje colgado en su cuenta de Twitter, el director Salas externó sus condolencias a los familiares de ambas personas, cuyos cuerpos fueron encontrados este lunes en aguas del Rio Isabela.\r\n\r\n“Consciente que ninguna palabra subsanará el dolor en que se encuentra inmerso el país y los familiares de los fallecidos, sin embargo, quiero externar mis sinceras condolencias y afectos en nombre de la Defensa Civil y el mío propio. Dios le conceda un buen lugar, fortaleza.”, escribió. \r\n\r\nPor otro lado, felicitó a los miembros de la Defensa Civil, que durante días trabajaron en la búsqueda y localización de ambos ciudadanos, con el objetivo de llevar tranquilidad a sus familiares. \r\n\r\n“Hago extensiva, más que mis felicitaciones, la motivación al personal de la Defensa Civil y voluntarios a seguir dándolo todo al servicio del país. Es nuestro compromiso garantizar que trabajen en condiciones dignas, se capaciten y se fortalezcan las unidades operacionales.”, dijo Salas en un twit. \r\n\r\nInformó además que instruyó a todo el personal que estuvo presente en las labores de búsqueda, a pasar por el departamento médico de la Defensa Civil para ser revisado y no comprometer su salud física y mental.\r\n\r\nSe recuerda que el pasado sábado el director Salas, lideró en el terreno, al equipo naranja que, junto a otras instituciones, trataban de dar con el paradero de ambos hombres.",
                  ),
                  slide(
                      imagePath: 'assets/noticia2.jpeg',
                      description:
                          "Defensa Civil recupera cuerpo de una persona en ribera del Río Isabela",
                      text:
                          "La Defensa Civil recuperó esta mañana el cuerpo de una persona en la ribera del rio Isabela, mientras se encontraba en labores de búsqueda de los ciudadanos reportados como desaparecidas desde el viernes, por las inundaciones urbanas que provocaron las fuertes lluvias.\r\n\r\nLa institución entregó el cuerpo al Instituto Nacional de Ciencias Forenses (INACIF) para fines de ser identificado.\r\n\r\nSe recuerda que desde el sábado el organismo desplegó un personal de búsqueda y rescate, técnicos en rescate acuático, unidades caninas y aeronaves no tripuladas (drones) para realizar labores de búsqueda y localización en la Cañada La Arenita de la Puya de Arroyo Hondo, ríos Ozama e Isabela y Mar Caribe.\r\n\r\nEn los trabajos también participan la Unidad de Respuesta Humanitaria del Ejército Dominicano,\r\n\r\nComando Anfibio de la Armada Dominicana, unidades de la Policía Nacional, Cuerpo de Bomberos y Sistema 9-1-1."),
                ]),
          ),
        ),
      ],)
    );
  }
}
