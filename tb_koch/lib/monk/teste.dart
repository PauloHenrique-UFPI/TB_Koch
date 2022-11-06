

import 'package:koch_app/models/paciente.dart';
import 'package:koch_app/models/user.dart';

var paulo = User(
  id: 1,
  name: 'Paulo Henrique de Carvalho Silva',
  email: 'teste@gmail.com',
  password: '123',
  createAt: DateTime.now(),
  profileImage: 'assets/images/user.jpg',
);

var pacientes = [ 
  Paciente(icone: 'assets/images/user.jpg', nome: 'Carlos Magalhães Oliveira', sigla: 'MG'),
  Paciente(icone: 'assets/images/user.jpg', nome: 'Pedro Aluisio Azevedo', sigla: 'PI'),
  Paciente(icone: 'assets/images/user.jpg', nome: 'Sandra de Castro Melo', sigla: 'DF'),
  Paciente(icone: 'assets/images/user.jpg', nome: 'Katarina Alexandra Gomes', sigla: 'SP'),
  Paciente(icone: 'assets/images/user.jpg', nome: 'José Lima Rodrigues', sigla: 'RJ'),
  ];