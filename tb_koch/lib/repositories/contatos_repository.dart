import 'package:koch_app/models/contatos.dart';

class ContatoRepository {
  static List<Contato> tabela = [
    Contato(
      id: 1,
      nome: 'Andre Sales',
      numero: '9929929921',
      profissao: 'Medico',
      email: 'andresales@gmail.com',
    ),
    Contato(
      id: 2,
      nome: 'Andre João',
      numero: '120319023',
      profissao: 'Agente de saude',
      email: 'andrejose@gmail.com',
    ),
    Contato(
      id: 3,
      nome: 'Paloma Sales',
      numero: '129387123',
      profissao: 'Microbiologa',
      email: 'palomasales@gmail.com',
    ),
  ];
}
