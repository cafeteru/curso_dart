void main(List<String> args) {
  for (String arg in args) {
    saludar(arg);
  }

  String nombre = 'Iván';
  String nombre2 = capitalizarValor(nombre);
  print(nombre2);

  Map<String, String> persona = {'nombre': 'Juan'};
  Map<String, String> persona2 = capitalizarReferencia(persona);
  print(persona);
  print(persona2);

  List<int> listado = [1, 2, 3, 4, 5, 6, 6, 7, 8, 9, 10, 10, 1];
  Iterable<int> nuevoListado = listado.where((n) => n > 4);
  print(nuevoListado.toSet());

  obtenerUsuarioCallback('100', (Map persona) {
    print(persona);
  });
}

void saludar(String nombre) {
  print('Hola $nombre');
}

String capitalizarValor(String texto) {
  return texto.toUpperCase();
}

Map<String, String> capitalizarReferencia(Map<String, String> map) {
  map['nombre'] = map['nombre'].toUpperCase();
  return map;
}

void obtenerUsuarioCallback(String id, Function callback) {
  Map usuario = {'id': id, 'nombre': 'Iván'};
  callback(usuario);
}
