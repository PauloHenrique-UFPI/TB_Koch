import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:koch_app/componentization/app_appbar.dart';
import 'package:koch_app/componentization/cached_image.dart';
import 'package:koch_app/models/contatos.dart';
import 'package:koch_app/repositories/contatos_repository.dart';
import 'package:koch_app/componentization/app_appbar.dart';

class ContatoViewPage extends StatelessWidget {
  ContatoViewPage({Key? key, this.id}) : super(key: key);

  final int? id;
  final tabela = ContatoRepository.tabela;

  @override
  Widget build(BuildContext context) {
    final Contato ct = tabela.firstWhere((element) => element.id == id);

    final Widget body = ct != null
        ? Center(
            child: Column(
            children: [
              CachedNetworkImage(
                imageUrl: '${ct.profilePicture}',
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    CircularProgressIndicator(value: downloadProgress.progress),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
              Text(
                ct.nome,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
              Text('${ct.numero}',
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 23)),
              Text(ct.profissao,
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 23)),
              Text(ct.email,
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 23)),
            ],
          ))
        : Center(
            child: const Text('Contato nÃ£o encontrado no Banco de Dados!'),
          );

    return Scaffold(
      appBar: compAppBar(),
      body: body,
      bottomNavigationBar: navbar(),
    );
  }
}