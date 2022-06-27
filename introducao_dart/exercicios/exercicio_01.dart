void main() {
  Exercicios exercicios = Exercicios();
  exercicios.exercicio01(45, 45);
  exercicios.exercicio02(10, 15, 30);
  exercicios.exercicio03(2000);
}

class Exercicios {
  void exercicio01(int n1, int n2) {
/**
 * Faça um programa que peça dois números e verifique (usando if e else)
 * e imprima o maior deles.
 */
    if (n1 > n2) {
      print(n1);
    } else {
      print(n2);
    }
  }

  void exercicio02(int n1, int n2, int n3) {
/**
 * Faça um programa que leia três números e verifique (usando if e else)
 * e imprima o maior deles.
 */
    if (n1 >= n2 && n1 >= n3) {
      print(n1);
    } else if (n2 >= n1 && n2 >= n3) {
      print(n2);
    } else if (n3 >= n1 && n3 >= n1) {
      print(n3);
    }
  }

  void exercicio03(double salario) {
    double novoSalario = 0;
    int percentualReajuste = 0;
    double valorDoAumento = 0;

    if (salario <= 280.00) {
      percentualReajuste = 20;
      valorDoAumento = salario * (percentualReajuste / 100);
      novoSalario = salario + valorDoAumento;
    } else if (salario > 280.00 && salario < 700.00) {
      percentualReajuste = 15;
      valorDoAumento = salario * (percentualReajuste / 100);
      novoSalario = salario + valorDoAumento;
    } else if (salario > 700.00 && salario < 1500.00) {
      percentualReajuste = 10;
      valorDoAumento = salario * (percentualReajuste / 100);
      novoSalario = salario + valorDoAumento;
    } else if (salario >= 1500.00) {
      percentualReajuste = 5;
      valorDoAumento = salario * (percentualReajuste / 100);
      novoSalario = salario + valorDoAumento;
    }

    print("Salário Antes do reajuste: $salario");
    print("Percentual de aumento aplicado: $percentualReajuste%");
    print("Valor do aumento: $valorDoAumento");
    print("O novo salário: $novoSalario");
  }
}
