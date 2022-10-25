//este arquivo serve para componentizar os butões, isto é cria a regra de negocios para tratar de eventuais
//botoes
import 'package:flutter/material.dart';

class BlockButton extends StatelessWidget {

  final IconData icon;
  final String label;
  final Function()? onPressed;

  final ButtonStyle = ElevatedButton.styleFrom(
    primary: Color.fromARGB(255, 219, 56, 56),
    textStyle: const TextStyle(fontSize: 18),
    padding: const EdgeInsets.all(15),
    
  );

  BlockButton({
    Key? key, 
    required this.icon, 
    required this.label, 
    required this.onPressed
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return SizedBox(
    width: 300,
    child: ElevatedButton.icon(
      style: ButtonStyle,
      icon: Icon(icon),
      label: Text(label),
      onPressed: onPressed,
    ),

   );
  
  }

}