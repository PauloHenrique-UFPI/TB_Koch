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


/*

UM BELO BOTAO DE BUSCA


 Padding(padding: EdgeInsets.only(top: 10),
          child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color.fromARGB(255, 199, 214, 223),
                    ),

                    child: TextField(
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),

                      decoration: InputDecoration(
                        fillColor: Color.fromARGB(255, 199, 25, 25),
                        contentPadding: EdgeInsets.only(
                          left: 20, top: 15, right: 20, bottom: 15,
                        ), 

                        prefixIcon: Padding(
                          padding: EdgeInsets.only(left: 15,right: 15),
                          child: CircleAvatar(
                            child: Icon(Icons.search),
                          )
                        ),
                        hintText: "Pesquisar Paciente"
                      ),
                    ),
                  ),   
                ),


*/