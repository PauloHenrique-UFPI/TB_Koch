import 'package:koch_app/models/profile.dart';

class ProfileRepository {
  static List<Profile> repo = [
    Profile(
      id: 1,
      nomeP: 'Andre Sales',
      profissaoP: 'Medico',
      emailP: 'andresales@gmail.com',
    ),
    Profile(
      id: 2,
      nomeP: 'Andre JosÃ©',
      numeroP: '120319023',
      profissaoP: 'Agente de saude',
      emailP: 'andrejose@gmail.com',
    ),
  ];
}