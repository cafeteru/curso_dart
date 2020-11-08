class Vehiculo {
  bool encendido = false;

  void encender() {
    this.encendido = true;
    print('Vehiculo encendido');
  }

  void apagar() {
    this.encendido = false;
    print('Vehiculo apagado');
  }
}

class Coche extends Vehiculo {
  int kilometraje = 0;
}

main() {
  Vehiculo ford = Coche();
  ford.encender();
  ford.apagar();
}
