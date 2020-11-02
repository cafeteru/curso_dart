import 'dart:async';

/**
 * Stream es como un observable de javascript
 */
main(List<String> args) {
  // Solo tiene una suscripción por defecto
  // final streamController = StreamController<String>();
  // broadcast permite varias suscripciones a la vez
  final streamController = StreamController<String>.broadcast();
  streamController.stream.listen((event) => print('Datos: $event'),
      onError: (error) => print('Ha ocurrido el siguiente error: $error'),
      onDone: () => print('Finaliza el flujo'),
      // Indica que finaliza el flujo si ocurre un error, por defecto es false
      cancelOnError: false);

  streamController.stream.listen((event) => print('2. Datos: $event'),
      onError: (error) => print('2. Ha ocurrido el siguiente error: $error'),
      onDone: () => print('2. Finaliza el flujo'),
      cancelOnError: false);

  streamController.sink.add('1, 2, 3');
  streamController.sink.addError('Error muy malo');
  streamController.sink.add('4, 5');
  streamController.sink.close();
  print('Fin del main');
}
