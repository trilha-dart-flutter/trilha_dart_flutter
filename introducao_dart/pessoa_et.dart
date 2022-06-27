import 'pessoa_abstract.dart';

class PessoaET implements PessoaAbstract {
  @override
  String comunicar() {
    return 'Olá mundo!';
  }
}
