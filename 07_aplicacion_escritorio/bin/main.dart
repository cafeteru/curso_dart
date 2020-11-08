import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:paquetes/clases/respuesta.dart';
import 'package:paquetes/paquetes.dart' as paquetes;

void main(List<String> arguments) {
  print('Hello world: ${paquetes.calculate()}!');
  final url = 'https://reqres.in/api/users';
  http.get(url).then((res) {
    final body = Respuesta.fromJson(json.decode(res.body));
    print(body);
  });
}
