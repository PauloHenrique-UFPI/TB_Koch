import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:koch_app/componentization/app_appbar.dart';
import 'package:koch_app/componentization/cached_image.dart';
import 'package:koch_app/models/profile.dart';
import 'package:koch_app/componentization/app_appbar.dart';
import 'package:koch_app/repositories/profile_repository.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key, this.id}) : super(key: key);

  final int? id;
  final repo = ProfileRepository.repo;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 20),
        padding: const EdgeInsets.all(20.0));

    return Scaffold(
      appBar: AppBar(
        title: Text(
            'TB-Koch',
            style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 26, 25, 25)),),
        ),
      body: Center(
            child: Column(
            children: <Widget>[
              CachedNetworkImage(
                imageUrl: "https://www.gov.br/planalto/pt-br/assuntos/assuntos-estrategicos/institucional/curriculos/avatar2.jpg/@@images/image",
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    CircularProgressIndicator(value: downloadProgress.progress),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
              Text(
                "Ricardo Soares de Assis",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 30),
              ),
              Text('(89) 9.9235-6588',
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 20)),
              Text('Médico',
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 20)),
              Text('Ricardo@gmail.com',
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 20)),
              Text(' '),
              Text(' '),
              ElevatedButton(
                style: style,
                onPressed: () {},
                child: const Text("Logout"),
              ),
            ],
          )),
      
    );
  }
}