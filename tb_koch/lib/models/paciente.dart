class Paciente {
  int id;
  String icone;
  String nome;
  String? numero;
  String? endereco;
  String sigla;

Paciente({
  required this.id,
  this.icone = 'https://www.gov.br/planalto/pt-br/assuntos/assuntos-estrategicos/institucional/curriculos/avatar2.jpg/@@images/image',
  required this.nome,
  this.numero,
  this.endereco,
  required this.sigla,
});

}

