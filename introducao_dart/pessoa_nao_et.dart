import 'pessoa_abstract.dart';

class PessoaNaoET implements PessoaAbstract {
  @override
  String comunicar() {
    return 'Bom Dia!';
  }
}
