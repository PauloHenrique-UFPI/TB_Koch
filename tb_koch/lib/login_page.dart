import 'package:flutter/material.dart';
import 'package:koch_app/app_appbar.dart';
import 'package:koch_app/block_button.dart';
import 'package:koch_app/home_page.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String email = '';
  String password = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox( 
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  width: 250,
                  height: 250,
                  child: Image.asset("assets/images/LOGO_TB_KOCH.png"),
                ),
                
                Container(height: 20,),

              /*
                Text(
                  'LOGIN',
                  style: TextStyle(fontSize: 30.0,  color: Color.fromARGB(255, 219, 56, 56)),
                ),

                */
                
                Container(height: 15,),
                TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder()
                  ),
                ),

                SizedBox(height: 10,),

                TextField(
                  onChanged: (text) {
                    password = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder()
                  ),
                ),
                
                SizedBox(height: 15,),

                compAppBar(),
                
                BlockButton(
                  icon: Icons.add_to_home_screen, 
                  label: 'Entrar', 
                  onPressed: () {
                    if( email == 'teste@gmail.com' && password == '123'){
                      Navigator.of(context).pushReplacementNamed('/home');
                    } else {
                        print('Login invalido');
                    }
                }),
              ]
              ),
            ),
          ),
        ),
    );
  }

}