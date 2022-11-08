import 'package:flutter/material.dart';
import 'package:koch_app/componentization/app_appbar.dart';
import 'package:koch_app/componentization/cached_image.dart';
import 'package:koch_app/named_routes.dart';
import 'package:koch_app/repositories/contatos_repository.dart';

class ContatoPage extends StatefulWidget {
  const ContatoPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return ContatoPageState();
  }
}

class ContatoPageState extends State<ContatoPage> {
  @override
  Widget build(BuildContext context) {
    final tabela = ContatoRepository.tabela;

    return Scaffold(
      //AQUI E O BODY DA APLICAÇÂO
      body: ListView.separated(
        itemBuilder: (BuildContext context, int contato) {
          return Card(
            elevation: 5.0,
            margin: const EdgeInsets.all(10.0),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(children: <Widget>[
                ListTile(
                  leading: CachedImage(
                    imageUrl:
                        'https://www.gov.br/planalto/pt-br/assuntos/assuntos-estrategicos/institucional/curriculos/avatar2.jpg/@@images/image',
                    circle: true,
                  ),
                  title: Text(tabela[contato].nome),
                  trailing: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, ContatoViewRoute,
                            arguments: {
                              'id': tabela[contato]
                                  .id, //mudar aqui para ser o id de cada contato
                            });
                      },
                      child: Icon(Icons.more_vert)),
                ),
              ]),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int contato) =>
            const Divider(),
        itemCount: tabela.length,
      ),
    );
  }
}