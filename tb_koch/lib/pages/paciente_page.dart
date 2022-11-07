import 'package:flutter/material.dart';
import 'package:koch_app/componentization/app_appbar.dart';
import 'package:koch_app/componentization/cached_image.dart';
import 'package:koch_app/named_routes.dart';
import 'package:koch_app/repositories/paciente_repository.dart';

class PacientePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PacientePageState();
  }
}

class PacientePageState extends State<PacientePage> {
  @override
  Widget build(BuildContext context) {
    final tabela = PacienteRepository.tabela;
    
    return Scaffold(
    //AQUI E O BODY DA APLICAÇÂO
    body: ListView.separated(
      itemBuilder: (BuildContext context, int paciente){
        return Card(
          elevation: 5.0,
          margin: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: Column(
              children: <Widget> [
                ListTile(
                  leading: CachedImage(imageUrl: tabela[paciente].icone,circle: true,),
                  title: Text(tabela[paciente].nome),
                  trailing: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, FichaViewRoute, arguments: {
                          'id': tabela[paciente].id,//mudar aqui para ser o id de cada paciente
                        });
                      },
                      child: Text('FICHA')),
                ),
                
              ]),
          ),
        );
      },
      
      separatorBuilder: (BuildContext context, int paciente) => const Divider(),
      itemCount: tabela.length,
    ),
  );
  }
}