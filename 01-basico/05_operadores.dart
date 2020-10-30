main() {
  int a = 10;
  a ??= 20; // asigna el valor si la variable es null, sino se omite
  print(a);

  int b = a ?? 2; // ?? comprueba si null
  print(b);

  print(a is double); // is comprueba el tipo de la variable
  print(a is! double);
}
