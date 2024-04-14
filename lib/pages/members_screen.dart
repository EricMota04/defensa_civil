import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:defensa_civil/presentation/widgets/AppBar/defensa_appbar.dart';
import 'package:defensa_civil/presentation/widgets/Members/member_slide.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MembersScreen extends StatefulWidget {
  @override
  State<MembersScreen> createState() => _MembersScreenState();
}

class _MembersScreenState extends State<MembersScreen> {
  List<dynamic> membersList = [];
  bool isLoading = false;
  String errorMessage = '';

  Future<void> getMembers() async {
    setState(() {
      isLoading = true;
    });
    final String apiURL = 'https://adamix.net/defensa_civil/def/miembros.php';
    try {
      final response = await http.get(Uri.parse(apiURL));
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        setState(() {
          membersList = jsonData["datos"];
          isLoading = false;
        });
      } else {
        setState(() {
          errorMessage = 'Error al obtener los datos: ${response.statusCode}';
          isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        errorMessage = 'Error al obtener los albergues: $e';
        isLoading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getMembers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefensaAppBar(context: context),
      body: Center(
        child: Padding(
          padding:
              EdgeInsets.only(bottom: 50.0), // Additional space at the bottom
          child: CarouselSlider.builder(
            itemCount: membersList.length,
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height * 0.70,
              autoPlay: false,
              enlargeCenterPage: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
            itemBuilder: (BuildContext context, int index, int realIndex) {
              if (membersList.isEmpty) {
                return CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Color.fromRGBO(15, 67, 116, 1)), // Color of the progress indicator
                  strokeWidth: 3,
                );
              } else {
                final albergue = membersList[index];
                return MembersSlide(
                  name: albergue["nombre"],
                  charge: albergue["cargo"],
                  imagePath: albergue["foto"],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
