import 'poli_pagamento_abastract.dart';

class PagarComBoleto implements PagamentoAbastract {
  @override
  void pagamento() {
    print("Pagando com Boleto");
  }
}
