import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:koch_app/componentization/app_appbar.dart';
import 'package:koch_app/models/paciente.dart';
import 'package:koch_app/named_routes.dart';
import 'package:koch_app/repositories/paciente_repository.dart';

class FichaPage extends StatelessWidget {
  FichaPage({Key? key, this.id}) : super(key: key);

  final int? id;
  final tabela = PacienteRepository.tabela;

  TextStyle _style() {
    return TextStyle(
      fontFamily: 'RobotoMono',
      fontWeight: FontWeight.bold,
    );
  }

  @override
  Widget build(BuildContext context) {
    final Paciente? pct = tabela.firstWhere((element) => element.id == id);

    final Widget body = pct != null
        ? Scaffold(
            body: Column(children: [
            Padding(padding: EdgeInsets.all(5)),
            Text(
              'Ficha Médica',
              style: Theme.of(context).textTheme.headline4,
            ),
            Padding(padding: EdgeInsets.all(10)),
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3.2,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 250, 250, 250),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Nome:',
                        style: _style(),
                      ),
                      Text(
                        '${pct.nome}',
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text('Telefone:', style: _style()),
                      Text('${pct.numero}'),
                      const SizedBox(
                        height: 5,
                      ),
                      Text('Endereço:', style: _style()),
                      Text('${pct.endereco}'),
                      const SizedBox(
                        height: 5,
                      ),
                      Text('Sigla Regional:', style: _style()),
                      Text('${pct.sigla}'),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Para acessar o prontuario clique no botão abaixo: ",
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        child: const Text('Acesse o Prontuario'),
                      )
                    ])),
          ]))
        : Center(
            child: Text('Paciente não encontrado no Banco de Dados'),
          );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TB-Koch',
          style:
              TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 26, 25, 25)),
        ),
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
      body: body,
    );
  }

  getGaleria() async {
    final ImagePicker _picker = ImagePicker();
    // Pick an image
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
  }
}
