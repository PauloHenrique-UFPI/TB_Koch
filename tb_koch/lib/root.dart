import 'package:flutter/material.dart';
import 'package:koch_app/named_routes.dart';

import 'package:koch_app/pages/contatos_page.dart';
import 'package:koch_app/pages/home_page.dart';
import 'package:koch_app/pages/paciente_page.dart';
import 'package:koch_app/pages/profile_page.dart';

class Root extends StatefulWidget {
   
   @override
   _RootState createState() => _RootState();
}

class _RootState extends State<Root>{

  var _currentIndex = 1;
  var _children = [
    ContatoPage(),
    HomePage(),
    PacientePage(),
  ];

  _onTap(int tab){
    if(_currentIndex != tab){
      setState(() {
        _currentIndex = tab;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
            'TB-Koch',
            style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 26, 25, 25)),),
          
         actions: <Widget>[
          IconButton(
            icon: Icon(Icons.supervised_user_circle_outlined),
            onPressed: () {
              Navigator.pushNamed(
                context,
                ProfileViewRoute,
                arguments: {
                  'id': 1,
                },
              );
            },
          ),
        ],
        ),

      body: _children[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: "Contatos",
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: "Pacientes",
        )
      ]),

    ); 
  }
}