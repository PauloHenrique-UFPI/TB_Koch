import 'package:flutter/material.dart';
import 'package:koch_app/componentization/app_controler.dart';

import 'package:koch_app/pages/home_page.dart';
import 'package:koch_app/pages/login_page.dart';
import 'package:koch_app/pages/paciente_page.dart';
import 'package:koch_app/pages/profile_page.dart';

class AppWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (BuildContext context, Widget? child) { 
        return MaterialApp(
        theme: ThemeData( 
          primarySwatch: Colors.red,
          brightness: AppController.instance.temaDaAplicacao 
            ? Brightness.dark 
            : Brightness.light,
        ),

        initialRoute: '/pacientes',
        routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/profile': (context) => ProfilePage(),
        '/pacientes':(context) => PacientePage(),
       },
      );
     },);
  }
}
