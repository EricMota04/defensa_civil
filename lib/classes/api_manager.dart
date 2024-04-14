import 'dart:core';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class APIManager {
  static Future<void> logIn(
      BuildContext context, String username, String password) async {
    String apiUrl = 'https://adamix.net/defensa_civil/def/registro.php';
    var url = Uri.parse(apiUrl);
    var request = http.MultipartRequest('POST', url);

    // Add text fields
    request.fields['cedula'] = username;
    request.fields['clave'] = password;

    var response = await request.send();

    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Sesion iniciada'),
          backgroundColor: Colors.green,
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Hubo un fallo al iniciar sesion'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  static Future<void> sendDataToAPI(
    BuildContext context,
    String cedula,
    String nombre,
    String apellido, // Add parameter name
    String correo,
    String telefono,
    String clave,
  ) async {
    String apiUrl = 'https://adamix.net/defensa_civil/def/registro.php';
    var url = Uri.parse(apiUrl);
    var request = http.MultipartRequest('POST', url);

    // Add text fields
    request.fields['cedula'] = cedula;
    request.fields['nombre'] = nombre;
    request.fields['apellido'] = apellido; // Corrected parameter name
    request.fields['correo'] = correo;
    request.fields['telefono'] = telefono;
    request.fields['clave'] = clave;

    var response = await request.send();

    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Usuario registrado correctamente'),
          backgroundColor: Colors.green,
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Hubo un fallo al registrar'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
