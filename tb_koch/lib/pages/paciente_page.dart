import 'package:flutter/material.dart';
import 'package:koch_app/componentization/app_appbar.dart';
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
    //Aqui e a HOME-BAR
    appBar: compAppBar(),

    //AQUI E O BODY DA APLICAÇÂO
    body: ListView.separated(
      itemBuilder: (BuildContext context, int paciente){
        return ListTile(
          leading: Padding(
            padding: EdgeInsets.all(10), 
            child: Image.asset(tabela[paciente].icone),
          ),
          title: Text(tabela[paciente].nome),
          trailing: Text(tabela[paciente].sigla),
        );
      },
      padding: EdgeInsets.all(16),
      separatorBuilder: (BuildContext context, int paciente) => const Divider(),
      itemCount: tabela.length,
    ),


    bottomNavigationBar: navbar(),
    
  
  );
  }
}