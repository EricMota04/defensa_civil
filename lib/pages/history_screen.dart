import 'package:flutter/material.dart';

// Widgets
import 'package:defensa_civil/presentation/widgets/AppBar/defensa_appbar.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({
    super.key,
  });

  @override
  State<HistoryScreen> createState() => HistoryDesign();
}

class HistoryDesign extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefensaAppBar(context: context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Miembros DC.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.7),
                      Colors.black.withOpacity(.2),
                    ],
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.04,
                    bottom: MediaQuery.of(context).size.height * 0.02,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Defensa Civil",
                        style: TextStyle(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          fontSize: MediaQuery.of(context).size.height * 0.04,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Antes del año 1966, cuando llegaba la temporada de huracanes, un grupo de radioaficionados se reunía en la Cruz Roja para estar atentos por si surgía algún tipo de emergencia, inmediatamente ponerse a disposición y ayudar en todo lo posible, inclusive, usando sus propios equipos de comunicación para así tener contacto con el exterior en caso de que las redes telefónicas resultaran afectadas.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Text(
                          "Al surgir el triunvirato fue designado el Dr. Rafael Cantizano Arias, como presidente de la Cruz Roja y al mismo tiempo nombraron al Ing. Carlos D´ Franco como director de la Defensa Civil, quien con un grupo compuesto por seis personas, se instaló en la calle Francia esquina Galván, siendo esa la primera oficina de la Defensa Civil.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Text(
                          "Al surgir el Gobierno Provisional, presidido por el Dr. Héctor García Godoy, a los diecisiete días del mes de junio de 1966, fue promulgada la Ley 257, mediante la cual fue creada la Defensa Civil, institución dependiente de la Secretaría Administrativa de la Presidencia (ahora Ministerio de la Presidencia) y quien en la actualidad preside la Comisión Nacional de Emergencias.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Text(
                          "Más adelante, el local fue trasladado a la calle Dr. Delgado No. 164 y luego en la gestión del Contralmirante Radhamés Lora Salcedo se reubicó a la Plaza de la Salud, donde aún permanece.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.06,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
