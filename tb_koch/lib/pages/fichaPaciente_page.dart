import 'package:flutter/material.dart';
import 'package:koch_app/componentization/app_appbar.dart';

class FichaPage extends StatelessWidget {
  
  const FichaPage({Key? key, this.id}) : super(key: key);
  
  final int? id;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: compAppBar(),
      body: Text('Ficha de Paciente ${id}'),
    );
  }
}

