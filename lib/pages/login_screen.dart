import 'package:defensa_civil/pages/register_screen.dart';
import 'package:defensa_civil/presentation/widgets/drawers/login_drawer.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Widgets
import 'package:defensa_civil/presentation/widgets/inputs/inputlogin.dart';
import 'package:defensa_civil/presentation/widgets/Buttons/button_orange.dart';
import 'package:defensa_civil/presentation/widgets/drawers/login_drawer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
  });

  @override
  State<LoginScreen> createState() => LoginDesign();
}

class LoginDesign extends State<LoginScreen> {
  TextEditingController userController = TextEditingController();
  TextEditingController passWordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      //drawer: LoginDrawer(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1,
              ),
              child: FadeInUp(
                duration: const Duration(seconds: 1),
                child: Center(
                  child: Image.asset('assets/logo_defensa_civil.png'),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1,
              ),
              child: Column(
                children: [
                  InputLogin(
                    controller: userController,
                    mode: TextInputType.name,
                    title: "Usuario",
                    inputIcon: FontAwesomeIcons.solidUser,
                    isPassWord: false,
                    inputColor: const Color.fromRGBO(239, 121, 42, 1),
                    description: "Ingrese su Usuario",
                    inputHintColor: const Color.fromRGBO(239, 121, 42, 0.3),
                    inputFocusColor: const Color.fromRGBO(15, 67, 116, 1),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  InputLogin(
                    controller: passWordController,
                    mode: TextInputType.name,
                    title: "Contraseña",
                    inputIcon: FontAwesomeIcons.solidUser,
                    isPassWord: true,
                    inputColor: const Color.fromRGBO(239, 121, 42, 1),
                    description: "Ingrese su Contraseña",
                    inputHintColor: const Color.fromRGBO(239, 121, 42, 0.3),
                    inputFocusColor: const Color.fromRGBO(15, 67, 116, 1),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  ButtonOrange(
                    title: "Iniciar Sesión",
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
                    },
                    child: Text(
                      "¿Aun no eres miembro? Haz clic para registrarte",
                      style: TextStyle(
                        color: const Color.fromRGBO(15, 67, 116, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: MediaQuery.of(context).size.height * 0.014,
                      ),
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
