main(List<String> args) {
  Audio volumen = Audio.bajo;
  switch (volumen) {
    case Audio.bajo:
      print('Volumen bajo');
      break;
    case Audio.medio:
      print('Volumen medio');
      break;
    case Audio.alto:
      print('Volumen alto');
      break;
    default:
      print('Volumen no especificado');
      break;
  }
}

enum Audio { bajo, medio, alto }
