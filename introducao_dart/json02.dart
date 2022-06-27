import 'dart:convert';

void main() {
  Map mapa = {
    'nome': 'Adelmo',
    'pass': 123,
    'permissions': ['owner', 'admin']
  };
  print(mapa);

  var result = jsonEncode(mapa);
  print(result);
}
