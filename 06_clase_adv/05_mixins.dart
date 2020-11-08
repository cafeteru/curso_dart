/**
 * 'mixin' es parecido al 'extends' pero con más caracteristicas.
 *  - No pueden ser instanciados (Clase estatica)
 *  - No pueden tener constructores
 *  - Se relacionan con 'with' pero se pueden incluir 1 o + a la vez
 */
mixin Logger {
  void imprimir(String texto) {
    final hoy = DateTime.now();
    print('$hoy - $texto');
  }
}

mixin Logger2 {
  void imprimir2(String texto) {
    final hoy = DateTime.now();
    print('$hoy - $texto');
  }
}

abstract class Astro with Logger, Logger2 {
  String nombre;
  Astro() {
    imprimir('-- Inicio del astro --');
  }

  void existo() {
    print('--  Existo --');
  }
}

class Asteroide extends Astro {
  Asteroide(String nombre) {
    this.nombre = nombre;
    imprimir('Soy $nombre');
    imprimir2('******');
  }
}

main(List<String> args) {
  final ceres = Asteroide('ceres');
  ceres.existo();
}
