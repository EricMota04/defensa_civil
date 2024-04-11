import 'package:flutter/material.dart';

class MedidasSlide extends StatelessWidget {
  final String title;
  final String info;

  const MedidasSlide(
      { required this.title, required this.info});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color.fromRGBO(15, 67, 116, 1),
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 4),
            ),
          ]),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30,),
                Text(
                  title,
                  style: TextStyle(
                      color: Color.fromRGBO(239, 121, 42, 1),
                      fontSize: 26,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),

                Text(
                  info,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
