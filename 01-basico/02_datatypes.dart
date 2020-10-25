void main() {
  // Se puede usar 'var' para definir variables
  // e infiere el tipo especifico cuando se asigna

  // Números
  int a = 10;
  double b = 10;
  int c; // Por defecto es null
  print('números: a = $a, b = $b, c = $c');

  // String
  // Se puede usar " y ' pero se recomienda usa '
  String nombre = 'Iván';
  print('Nombre = $nombre');
  String multilinea = '''
Hola mundo
Prueba de multilinea''';
  print('multilinea = $multilinea');

  // Boolean
  // Pueden ser null si no se especifica
  bool activo;
  print('activo = $activo'); // Devuelve null
  activo = true;

  // Lists
  // List<String> ;
  List<String> personajes = new List();
  // '..' permite concatenar llamadas de métodos de un
  // mismo objeto
  personajes..add('Superman')..add('Batman')..add('Batman');

  print('personajes = $personajes');

  List<String> villanos = new List(3); // Indica el tamaño fijo
  villanos[0] = 'Lex';
  villanos[1] = 'Joker';
  villanos[2] = 'Doom';
  print('villanos = $villanos');

  // Sets, se definen con '{}' si no se usan pares de valores
  Set<String> villanos2 = {'Lex', 'Joker'};
  villanos2.add('Doom');
  villanos2.add('Doom');
  print('villanos2 = $villanos2');

  // Maps, se declaran como si fueran un JSON
  // dynamic es como any en typescript (admite cualquier tipo de dato)
  Map<String, dynamic> ironman = {
    'nombre': 'Tony Start',
    'poder': 'inteligencia',
    'edad': 40
  };
  print('ironman = $ironman');
  print('ironman = ${ironman['nombre']}');

  Map<String, dynamic> capitan = new Map();
  capitan.addAll({'nombre': 'Steve', 'edad': 40});
  print('capitan = $capitan');
}
