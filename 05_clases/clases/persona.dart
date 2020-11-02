class Persona {
  // Campos
  String _nombre;
  int _edad;
  // Añadir '_' indicada que es privada
  String _bio;

  // Get y set
  String get nombre => _nombre.toUpperCase();
  int get edad => _edad;
  String get bio => _bio.toUpperCase();

  set nombre(String nombre) => _nombre = nombre;
  set edad(int edad) => _edad = edad;
  set bio(String bio) => _bio = bio;

  // Constructores
  Persona() {
    this._nombre = '';
    this._edad = 0;
    this._bio = '';
  }

  Persona.sobrecarga(this._nombre, this._edad);

  // Métodos
  @override
  String toString() => 'Nombre: $_nombre, edad: $_edad, bio: $_bio';
}
