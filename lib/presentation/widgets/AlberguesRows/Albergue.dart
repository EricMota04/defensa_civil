import 'package:flutter/material.dart';

class AlbergueRow extends StatefulWidget {
  // Variables
  final dynamic title;
  final dynamic city;
  final dynamic phoneNumber;

  const AlbergueRow({
    required this.title,
    required this.city,
    required this.phoneNumber,
  });

  @override
  State<AlbergueRow> createState() => AlbergueRowDesign();
}

class AlbergueRowDesign extends State<AlbergueRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(
        color: Color.fromRGBO(15, 67, 116, 1),
        width: 1.0,
      ))),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(15, 67, 116, 1),
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  widget.city,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color.fromRGBO(15, 67, 116, 1)),
                ),
                Text(
                  widget.phoneNumber,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color.fromRGBO(239, 121, 42, 1)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
