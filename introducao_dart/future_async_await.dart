void main() async {
  String nome = "Adelmo";
  Future<String> cepFuturo = getCepByName("Rua JK");
  late String cep;

  // cepFuturo.then((result) => cep = result);
  //print(cepFuturo);
  cep = await cepFuturo;
  print(cep);
}

// external service
Future<String> getCepByName(String name) {
  // simulando uma requisição
  return Future.value("66810000");
}
