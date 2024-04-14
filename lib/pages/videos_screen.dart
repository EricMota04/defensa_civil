import 'dart:convert';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:defensa_civil/presentation/widgets/AppBar/defensa_appbar.dart';

class VideosScreen extends StatefulWidget {
  const VideosScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<VideosScreen> createState() => VideosScreenDesign();
}

class VideosScreenDesign extends State<VideosScreen> {
  List<dynamic> videosList = [];

  Future<void> getVideos() async {
    final String apiURL = 'https://adamix.net/defensa_civil/def/videos.php';
    try {
      final response = await http.get(Uri.parse(apiURL));
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        setState(() {
          videosList = jsonData["datos"];
        });
      } else {
        print('Error al obtener los datos: ${response.statusCode}');
      }
    } catch (e) {
      print('Error al obtener los datos: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    getVideos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefensaAppBar(context: context),
      body: Column(
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
                      "Videos",
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
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: videosList.length,
              itemBuilder: (BuildContext context, int index) {
                final video = videosList[index];
                return ListTile(
                  title: Text(
                    video["titulo"],
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: const Color.fromRGBO(239, 121, 42, 1),
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ),
                  onTap: () async {
                    await launch(
                      "https://www.youtube.com/watch?v=${video["link"]}",
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
