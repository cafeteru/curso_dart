import 'clases/persona.dart';

main(List<String> args) {
  final persona = Persona();
  print(persona);
  persona
    ..nombre = 'Iván'
    ..edad = 29
    ..bio = 'FrontEnd';

  print(persona);

  final persona2 = Persona.sobrecarga('Sobrecarga', 18);
  print(persona2);
}
