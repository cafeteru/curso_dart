import 'dart:io';

/**
 * Future es como una promesa de javascript
 */
main(List<String> args) {
  futureSimple();
  readFile();
  readFilePath('Ruta no existe');
  print('Fin de la función');
}

void futureSimple() {
  Future<String> timeout = Future.delayed(Duration(seconds: 3), () {
    print('Pasaron tres segundos');
    return 'Termino el future';
  });
  timeout.then((String texto) => print(texto));
}

void readFile() {
  String url = Directory.current.path;
  File file = new File('$url/04_tipos_no_comunes/asserts/personas.txt');
  Future<String> future = file.readAsString();
  future.then((value) => print(value));
}

void readFilePath(String path) {
  File file = new File(path);
  Future<String> future = file.readAsString();
  future.then((value) => print(value)).catchError((error) => print(error));
}
