void main() {
  var pagamento = Pagamento();
  pagamento.pagar(TipoPagamento.CARTAO);
}

enum TipoPagamento {
  PIX,
  BOLETO,
  CARTAO;
}

extension ExTensionTipoPagamento on TipoPagamento {
  String toValue() {
    Map mapa = {
      TipoPagamento.PIX: 'pix',
      TipoPagamento.BOLETO: 'boleto',
      TipoPagamento.CARTAO: 'cartao',
    };
    return mapa[this];
  }
}

class Pagamento {
  void pagar(TipoPagamento tipoPagamento) {
    if (tipoPagamento.toValue() == 'pix') {
      print("Pagando com PIX...");
    } else if (tipoPagamento.toValue() == 'boleto') {
      print("Pagamento com Boleto...");
    } else if (tipoPagamento.toValue() == 'cartao') {
      print('Pagando com o CARTÃO...');
    }
  }
}
