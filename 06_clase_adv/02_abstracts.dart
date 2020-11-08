abstract class Vehiculo {
  bool encendido = false;

  void encender() {
    this.encendido = true;
    print('Vehiculo encendido');
  }

  void apagar() {
    this.encendido = false;
    print('Vehiculo apagado');
  }

  bool revisarMotor();
}

class Coche extends Vehiculo {
  int kilometraje = 0;

  @override
  bool revisarMotor() {
    print('Motor ok');
    return true;
  }
}

main() {
  Vehiculo ford = Coche();
  ford.encender();
  ford.revisarMotor();
  ford.apagar();
}
