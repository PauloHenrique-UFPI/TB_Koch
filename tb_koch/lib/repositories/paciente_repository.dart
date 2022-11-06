import 'package:koch_app/models/paciente.dart';

class PacienteRepository {

  static List<Paciente> tabela = [
    Paciente(icone: 'assets/images/user.jpg', nome: 'Carlos Magalhães Oliveira', sigla: 'MG',endereco: 'rua dos pombos numero 0',numero: '(61)9.09990909'),
    Paciente(icone: 'assets/images/user.jpg', nome: 'Pedro Aluisio Azevedo', sigla: 'PI'),
    Paciente(icone: 'assets/images/user.jpg', nome: 'Sandra de Castro Melo', sigla: 'DF'),
    Paciente(icone: 'assets/images/user.jpg', nome: 'Katarina Alexandra Gomes', sigla: 'SP'),
    Paciente(icone: 'assets/images/user.jpg', nome: 'José Lima Rodrigues', sigla: 'RJ'),

  ];
}