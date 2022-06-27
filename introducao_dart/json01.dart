import 'dart:convert';

void main() {
  String json = ''' 
  {
    "usuario": "adelmo@email.com",
    "senha": 123456,
    "permissoes": [
      "owner", "admin"
    ]
  }
  ''';
  print(json);

  Map resultJson = jsonDecode(json);
  print(resultJson);
  print(resultJson.runtimeType);
  print(resultJson["usuario"]);
  print(resultJson['permissoes'][0]);
  print(resultJson['permissoes'][1]);
}
