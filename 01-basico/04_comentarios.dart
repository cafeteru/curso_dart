main() {
  // Comentario unica línea
  int a = 10;
  print(a);
  saludar('1', '2');

/* Comentario en bloque 
  final personas = ['Fernando', 'Pedro', 'Carlos'];
*/
}

/**
 * Comentario de función
 * Se usan los corchetes para declarar las variables en la documentación
 *
 * Recibe un [nombre] y un [mensaje]
 */
saludar(String nombre, String mensaje) {
  print('Hola $nombre: Este es su mensaje $mensaje');
}
