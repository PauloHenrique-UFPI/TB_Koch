import 'package:flutter/material.dart';
import 'package:koch_app/app_appbar.dart';
import 'package:koch_app/app_controler.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    //Aqui e a HOME-BAR
    appBar: compAppBar(),

    //AQUI E O BODY DA APLICAÇÂO
    body: Container( 
      width: double.infinity,
      height: double.infinity,

      child:  Column(
        children: [
          Text('HOME PAGE'),

        ],
    
      ),
      ),
    
  
  );
  }

}

class Customizavel extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.temaDaAplicacao,
        onChanged: (value){
          animation: AppController.instance.changeThema();
        },);
  }
}

/* codigos que talvez eu reaproveite:

    //AQUI E O BODY DA APLICAÇÂO
    body: Align(
      alignment: Alignment.topCenter,//comando para definir que tudo que esta no body vai ser alinhado no top

      child: GestureDetector(
        child: Text(
          'Mural de Eventos', 
          style: TextStyle(fontSize: 20.0),
          ),
      ),
   )


*/