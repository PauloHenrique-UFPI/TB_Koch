class Avisos{
  String? titulo;
  String? descricao;
  String? shotDescricao;
  String? imagemURL;

  Avisos({
    required this.titulo,
    this.descricao = '',
    required this.shotDescricao,
    this.imagemURL,
  });
}