import 'dart:math';

import 'package:koch_app/models/paciente.dart';

class PacienteRepository {

  static List<Paciente> tabela = [
    Paciente(id: 1, icone: 'https://img.freepik.com/fotos-gratis/retrato-de-homem-feliz-e-sorridente_23-2149022620.jpg?w=740&t=st=1667847537~exp=1667848137~hmac=a32c615fe8cff8017133726e169658642c261d710bfe1f25866dccc3f8592b6e', nome: 'Carlos Magalhães Oliveira', sigla: 'MG',endereco: 'rua dos pombos numero 0',numero: '(61)9.09990909'),
    Paciente(id: 2, nome: 'Pedro Aluisio Azevedo', sigla: 'PI'),
    Paciente(id: 3, nome: 'Sandra de Castro Melo', sigla: 'DF'),
    Paciente(id: 4, icone: 'https://photos.google.com/u/2/photo/AF1QipMqgPZu0CNUg8GiSdsiX8NenaYIa5ucXXyCdZ4s', nome: 'Katarina Alexandra Gomes', sigla: 'SP'),
    Paciente(id: 5, nome: 'José Lima Rodrigues', sigla: 'RJ'),

  ];
}