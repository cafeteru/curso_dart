import 'dart:io';

main() {
  // Imprimir en terminal
  stdout.writeln('¿Cuál es tu nombre?');

  // Leer información
  String nombre = stdin.readLineSync();
  stdout.writeln('Tu nombre es $nombre');
}
