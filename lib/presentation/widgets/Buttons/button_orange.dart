import 'package:flutter/material.dart';

class ButtonOrange extends StatelessWidget {
  final String? title;

  const ButtonOrange({required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: Text(
          title ?? '',
          style: TextStyle(fontSize: 20),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            Color.fromRGBO(239, 121, 42, 1),
          ),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          minimumSize: MaterialStateProperty.all<Size>(
            Size(250, 50),
          ),
        ));
  }
}
