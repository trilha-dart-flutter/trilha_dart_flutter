import 'poli_pagamento_abastract.dart';

class PagarComPix implements PagamentoAbastract {
  @override
  void pagamento() {
    print("Pagando com Pix");
  }
}
