main() {
  int a = 10;

  // Las dos se usan para definir constantes
  final double b = 20;
  const double c = 30;

  print('$a $b $c');

  // 'final' permite la modificación pero no la asignación
  final List<String> personasFinal = ['Juan', 'Pedro', 'Fernando'];
  personasFinal.add('Maria');
  print(personasFinal);

  // 'const' no se puede modificar nunca
  const List<String> personasConst = ['Juan', 'Pedro', 'Fernando'];
  // personasConst.add('Maria');
  print(personasConst);
}
