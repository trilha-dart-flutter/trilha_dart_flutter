void main() {
  var pagamento = Pagamento();
  pagamento.pagar(TipoPagamento.CARTAO);
}

enum TipoPagamento {
  PIX(1, 'pix'),
  BOLETO(2, 'boleto'),
  CARTAO(3, 'cartao');

  final String value;
  final int id;
  const TipoPagamento(this.id, this.value);
}

class Pagamento {
  void pagar(TipoPagamento tipoPagamento) {
    if (tipoPagamento.value == 'pix') {
      print("Pagando com PIX id: ${tipoPagamento.id}...");
    } else if (tipoPagamento.value == 'boleto') {
      print("Pagamento com Boleto id: ${tipoPagamento.id}...");
    } else if (tipoPagamento.value == 'cartao') {
      print('Pagando com o CARTÃO id: ${tipoPagamento.id}...');
    }
  }
}
