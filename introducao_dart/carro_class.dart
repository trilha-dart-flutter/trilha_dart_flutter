class CarroClass {
  final String modelo;
  //privado se usa _
  String _segredo = "Muito Dinheiro";

  double _valor = 1000.00;
  double get valorDoCarro => _valor;
  void setValue(double valor) => _valor = valor;

  CarroClass(this.modelo);
}
