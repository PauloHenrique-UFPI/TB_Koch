import 'package:flutter/material.dart';
import 'package:koch_app/componentization/app_appbar.dart';
import 'package:koch_app/componentization/app_controler.dart';
import 'package:koch_app/componentization/block_button.dart';

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
          Container(
                  height: 50,
                  child: Text('Mural de Avisos',  style: TextStyle(fontSize: 20.0,  color: Color.fromARGB(255, 14, 13, 13)),),
                ),

          Container(
                  child: Image.asset("assets/images/img1.png"),
                ),
          
          
          Container(
                width: 300,
                  child: Text('A Secretaria Municipal de Saúde realiza  campanha de intensificação  de  busca   ativa   de casos de tuberculose  entre os dias 15 a 29 deste mês.',  style: TextStyle(fontSize: 15.0,  color: Color.fromARGB(255, 14, 13, 13)),),
                ),
          
          
           BlockButton(
                  icon: Icons.mobile_screen_share_outlined, 
                  label: 'Ler Mais', 
                  probutton: 150,
                  onPressed: () {},
           ),

            
        ],
    
      ),
    ),

    bottomNavigationBar: navbar(),
    
  
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