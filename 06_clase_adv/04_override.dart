class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  void imprimirNombre() => print('Nombre $nombre, edad: $edad');
}

class Cliente extends Persona {
  String direccion;
  List ordenes = [];

  Cliente(int edadActual, String nombreActual)
      : super(nombreActual, edadActual);

  @override
  void imprimirNombre() {
    super.imprimirNombre();
    print('dirección: $direccion, ordenes: $ordenes');
  }
}

main(List<String> args) {
  final yo = Cliente(29, 'Iván');
  yo.imprimirNombre();
}
