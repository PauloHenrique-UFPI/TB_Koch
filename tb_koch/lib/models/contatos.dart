class Contato {
  int id;
  String? profilePicture;
  String nome;
  String? numero;
  String profissao;
  String email;

  Contato({
    required this.id,
    this.profilePicture =
        'https://www.gov.br/planalto/pt-br/assuntos/assuntos-estrategicos/institucional/curriculos/avatar2.jpg/@@images/image',
    required this.nome,
    this.numero,
    required this.profissao,
    required this.email,
  });
}