import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProfilePageState();
  }
}

class ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil Anônimo'),
      ),
      backgroundColor: Colors.grey[250],
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                child: Image.network("https://img.freepik.com/fotos-gratis/retrato-do-jovem-medico-segurando-o-estetoscopio_23-2148352015.jpg?size=626&ext=jpg%22"),
                radius: 80,
              )
            ],
          ),
        ),
      ),
    );
  }
}