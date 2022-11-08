class Profile {
  int id;
  String? profilePictureP;
  String nomeP;
  String? numeroP;
  String profissaoP;
  String? emailP;

  Profile({
    required this.id,
    this.profilePictureP =
        'https://www.gov.br/planalto/pt-br/assuntos/assuntos-estrategicos/institucional/curriculos/avatar2.jpg/@@images/image',
    required this.nomeP,
    this.numeroP,
    required this.profissaoP,
    this.emailP,
  });
}