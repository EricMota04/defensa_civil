import 'package:carousel_slider/carousel_slider.dart';
import 'package:defensa_civil/presentation/widgets/AppBar/defensa_appbar.dart';
import 'package:defensa_civil/presentation/widgets/Medidas/medidas_slide.dart';
import 'package:flutter/material.dart';

class MedidasScreen extends StatelessWidget {
  const MedidasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefensaAppBar(context: context),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(
              bottom: 50.0), // Espacio adicional en la parte inferior
          child: CarouselSlider(
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.80,
                autoPlay: false,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
              items: [
                MedidasSlide(
                    title: 'Temporada Ciclónica',
                    info:
                    'La temporada de huracanes del Atlántico en el 2016 es un evento actual en la temporada anual de ciclones tropicales en el hemisferio norte. La temporada comienza oficialmente el 1 de junio de 2016, y finaliza el 30 de noviembre de 2016. Estas fechas describen históricamente el período de cada año en que se forman la mayoría de los ciclones tropicales en la cuenca del Atlántico y son nombrados por convención. Sin embargo, la formación de ciclones tropicales es posible en cualquier momento del año.\r\n\r\n¿Qué hacer antes?\r\n\r\nElabore un plan de emergencia familiar estableciendo cuales son los lugares seguros e inseguros de la vivienda.\r\nObtenga los teléfonos de los organismos de Protección Civil y esté alerta a sus orientaciones.\r\nCierre la llave del tanque de gas.\r\nIndague sobre la ubicación de los albergues, en caso de que su vivienda no sea segura.\r\nCoordine con los organismos correspondientes la poda de árboles que puedan afectar su vivienda y el tendido eléctrico.\r\nAsegure puertas y ventanas de vidrio con material adhesivo o madera y refuerce cualquier área débil de la vivienda.\r\nPrepare un botiquín de primeros auxilios. En caso de estar llevando algún tratamiento médico obtenga los medicamentos necesarios.\r\nPonga en un lugar seguro cualquier artefacto u objeto que pudiera convertirse en un peligro en presencia de fuertes vientos. Desmonte antenas y parábolas.\r\nTenga a mano un radio portátil, foco y bate3rías suficientes.\r\nAlmacene agua potable y alimentos enlatados u otros que no necesiten refrigeración.\r\nColoque su vehículo en un lugar seguro con suficiente combustible.\r\nUbique en lugar seguro productos tóxicos e inflamables para evitar derrame o fuga de los mismos.\r\nAsegure sus documentos personales con una envoltura impermeable.\r\nSi las autoridades de Protección Civil les recomiendan evacuar su casa, ¡HÁGALO! Primero su vida.\r\n ¿Qué hacer durante?\r\n\r\nAnte todo conserve la calma.\r\nTrasládese a los sitios dentro de la casa que tengan mayor seguridad.\r\nEste pendiente a las informaciones de los organismos oficiales, a través de los medios de comunicación.\r\nMantenga a la vista los integrantes de la familia, en especial los niños, niñas y envejecientes.\r\nManténgase alejado de puertas y ventanas.\r\nUse el teléfono solo para emergencias.\r\nTenga a mano la reserva de agua potable y el botiquín de primeros auxilios.\r\nVigile constantemente el aumento del nivel del agua en los lugares cercanos a su vivienda.\r\nEn caso de que pase el ojo del huracán por su zona habrá calma por aproximadamente 1 hora, no debe salir de su casa, espere las indicaciones de las autoridades de Protección Civil.\r\nSi el viento abre una puerta o ventana no avance de frente a la misma, ciérrela con toda la precaución necesaria.\r\n¿Qué hacer después?\r\n\r\nReporte o pida auxilio para cualquier integrante de su familia que haya resultado herido durante el evento.\r\nLimpie de manera segura el entorno de su vivienda y elimine cualquier depósito de agua que pueda albergar plagas.\r\nRacione el agua potable almacenada, una vez terminada la misma solo consuma agua hervida.\r\nConsuma solo alimentos que no estén contaminados.\r\nNo cruce ríos, arroyos, cañadas o zonas inundadas que presenten elevado nivel de agua.\r\nNo pisar cables eléctricos y retírese de postes y árboles en peligro de caer.\r\nConduzca solo si es absolutamente necesario.\r\nEste atento a las orientaciones de los organismos de Protección Civil.'),
                MedidasSlide(title: 'Palomo 2', info: 'Palomear'),
                MedidasSlide(title: 'Palomo 3', info: 'Ser palomo')
              ]),
        ),
      ),

    );
  }
}
