class Paciente {
  String icone;
  String nome;
  String? numero;
  String? endereco;
  String sigla;

Paciente({
  this.icone = 'assets/images/user.jpg',
  required this.nome,
  this.numero,
  this.endereco,
  required this.sigla,
});

}

