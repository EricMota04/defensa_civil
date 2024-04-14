import 'package:defensa_civil/presentation/widgets/Buttons/button_orange.dart';
import 'package:defensa_civil/presentation/widgets/inputs/inputregister.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class RegisterScreen extends StatelessWidget {
  final TextEditingController cedulaController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  RegisterScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(15, 67, 116, 1),
                    borderRadius: BorderRadius.circular(40.0)),
                height: MediaQuery.of(context).size.height * 0.65,
                width: MediaQuery.of(context).size.width * 0.85,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Registrate',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        InputRegister(
                          controller: cedulaController,
                          inputIcon: Icons.credit_card_sharp,
                          title: 'Cedula',
                        ),
                        InputRegister(
                          controller: nameController,
                          inputIcon: Icons.person,
                          title: 'Nombre',
                        ),
                        InputRegister(
                          controller: lastnameController,
                          inputIcon: Icons.person,
                          title: 'Apellido',
                        ),
                        InputRegister(
                          controller: emailController,
                          inputIcon: Icons.email,
                          title: 'Correo',
                        ),
                        InputRegister(
                          controller: phoneController,
                          inputIcon: Icons.phone,
                          title: 'Telefono',
                        ),
                        InputRegister(
                            controller: passwordController,
                            inputIcon: Icons.password,
                            title: 'Contraseña')
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ButtonOrange(title: 'Registrarse'),
              // Este texto deberia redireccionar a la pagina del login

            ],
          ),
        ),
      ),
    );
  }
}
