import 'poli_pagamento_abastract.dart';
import 'poli_pagamento_boleto.dart';
import 'poli_pagamento_pix.dart';

void main() {
  PagamentoAbastract pagar = PagarComBoleto();
  pagar.pagamento();

  pagar = PagarComPix();
  pagar.pagamento();
}
