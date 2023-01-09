import 'dart:math';

import 'package:koch_app/models/paciente.dart';

class PacienteRepository {

  static List<Paciente> tabela = [
    Paciente(id: 1, nome: 'Carlos Magalhães Oliveira', sigla: 'MG',endereco: 'rua dos pombos numero 0',numero: '(61)9.09990909'),
    Paciente(id: 2, nome: 'Pedro Aluisio Azevedo', sigla: 'PI'),
    Paciente(id: 3, nome: 'Sandra de Castro Melo', sigla: 'DF'),
    Paciente(id: 4, nome: 'Katarina Alexandra Gomes', sigla: 'SP'),
    Paciente(id: 5, nome: 'José Lima Rodrigues', sigla: 'RJ'),

  ];
}