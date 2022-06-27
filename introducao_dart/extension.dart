void main() {
  String nome = 'adelmo';
  // print(nome[0].toUpperCase() + nome.substring(1));
  print(nome.toFirstCharToUpperCase());
  print('menezes'.toFirstCharToUpperCase());

  print(EnumTest.enumValue.toValue());
  print(EnumTest.enumNovo.toValue());
}

enum EnumTest {
  enumValue, enumNovo;
}

extension ExtensionEnum on Enum {
  String toValue() {
   Map mapa = {
    EnumTest.enumValue: 'xpto00',
    EnumTest.enumNovo: 'novoValor'
   };
   return mapa[this];
  }
}

extension ExtensionString on String {
  String toFirstCharToUpperCase() {
    return this[0].toUpperCase() + this.substring(1);
  }
}
