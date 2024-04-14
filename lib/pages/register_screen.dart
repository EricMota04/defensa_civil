import 'package:defensa_civil/classes/api_manager.dart';
import 'package:defensa_civil/presentation/widgets/AppBar/defensa_appbar.dart';
import 'package:defensa_civil/presentation/widgets/Buttons/button_orange.dart';
import 'package:defensa_civil/presentation/widgets/inputs/inputregister.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RegisterScreen extends StatelessWidget {
  final TextEditingController cedulaController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefensaAppBar(context: context),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(15, 67, 116, 1),
                  borderRadius: BorderRadius.circular(40.0),
                ),
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
                            fontWeight: FontWeight.w700,
                          ),
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
                          title: 'Contraseña',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ButtonOrange(
                title: 'Registrarse',
                onPressed: () {
                  APIManager.sendDataToAPI(
                      context,
                      cedulaController.text,
                      nameController.text,
                      lastnameController.text,
                      emailController.text,
                      phoneController.text,
                      passwordController.text);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
