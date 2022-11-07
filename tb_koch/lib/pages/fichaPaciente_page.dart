import 'package:flutter/material.dart';
import 'package:koch_app/componentization/app_appbar.dart';
import 'package:koch_app/models/paciente.dart';
import 'package:koch_app/repositories/paciente_repository.dart';

class FichaPage extends StatelessWidget {
  
  FichaPage({Key? key, this.id}) : super(key: key);
  
  final int? id;
  final tabela = PacienteRepository.tabela;

  @override
  Widget build(BuildContext context){
    final Paciente pct = tabela.firstWhere((element) => element.id == id);

    final Widget body = pct != null 
      ? Center(
        child: Column(children: [
          Text('Nome: ${pct.nome}'),
          Text('Numero: ${pct.numero}'),
          Text('Endereco: ${pct.endereco}'),
          Text('Sigla: ${pct.sigla}'),
        ],)
      ) :
      Center(
        child: Text('Paciente não encontrado no Banco de Dados'),
      );

    return Scaffold(
      appBar: compAppBar(),
      body: body,
    );
  }
}

