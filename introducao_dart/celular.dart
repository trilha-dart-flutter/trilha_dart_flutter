class Celular {
  final String cor;
  final int qtdPros;
  final double tamanho;
  final double peso;

  Celular(this.cor, this.qtdPros, this.tamanho, this.peso);

  String toString() {
    return 'Cor: $cor, qtdPros: $qtdPros, peso: $peso, Tamanho $tamanho';
  }

  double valorDoCelular(double valor) {
    return valor * qtdPros;
  }
}

void main() {
  Celular celularDoAdelmo = Celular('Azul', 5, 0.800, 5.7);
  Celular celularDoMenezes = Celular('Preto', 10, 0.100, 5.7);

  print(celularDoAdelmo.cor);
  print(celularDoAdelmo.qtdPros);
  print(celularDoMenezes.toString());

  double resultado = celularDoAdelmo.valorDoCelular(1000);
  print(resultado);
}
