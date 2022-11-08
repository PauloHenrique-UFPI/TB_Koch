import 'package:flutter/material.dart';
import 'package:koch_app/named_routes.dart';
import 'package:koch_app/pages/fichaContato_page.dart';
import 'package:koch_app/pages/fichaPaciente_page.dart';

import 'package:koch_app/pages/login_page.dart';
import 'package:koch_app/pages/profile_page.dart';
import 'package:koch_app/root.dart';

Route<dynamic> generateRoute(RouteSettings settings) {

  var arguments = settings.arguments;

  switch (settings.name){
    case RootViewRoute:
      return MaterialPageRoute(builder: (context) => Root());

    case LoginViewRoute:
      return MaterialPageRoute(builder: (context) => LoginPage());

    case ProfileViewRoute:
      return MaterialPageRoute(builder: (context) => ProfilePage());

    case ContatoViewRoute:
      return MaterialPageRoute(
          builder: (context) => ContatoViewPage(
                id: (arguments as Map<String, dynamic>)['id'],
              ));

    case ProfileViewRoute:
      return MaterialPageRoute(
          builder: (context) => ProfilePage(
                id: (arguments as Map<String, dynamic>)['id'],
              ));

    case FichaViewRoute:
      return MaterialPageRoute(builder: (context) => FichaPage(
        id: (arguments as Map<String, dynamic>)['id'],)); // define que o 'arguments' e um Mapa onde eu pego o campo 'id' (posso mudar depois)
   
    default:
      return MaterialPageRoute(builder: (context) => Root());
  }
}