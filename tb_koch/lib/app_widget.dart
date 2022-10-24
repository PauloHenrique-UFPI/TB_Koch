import 'package:flutter/material.dart';
import 'package:koch_app/app_controler.dart';

import 'home_page.dart';

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
        home: HomePage(),
      );
     },);
  }
}
