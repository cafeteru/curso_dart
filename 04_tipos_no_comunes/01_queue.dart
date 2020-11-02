import 'dart:collection';

main(List<String> args) {
  Queue<int> cola = new Queue();
  cola.addAll([1, 2, 3, 4, 5]);
  Iterator<int> i = cola.iterator;
  while (i.moveNext()) {
    print('${i.current}');
  }
}
