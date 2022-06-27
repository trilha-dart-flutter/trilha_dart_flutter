void main() {
  try {
    print((2 / 0).toInt());
  } catch (e, stacksTrace) {
    print('printando o errro $e');
    print(stacksTrace);
    throw CustomError("error customizado");
    // rethrow; // propagar o erro
    // throw Exception("Ocorreu um erro xpto"); // retornar um novo erro
  }
}

class CustomError implements Exception {
  final String error;
  CustomError(this.error);
}
