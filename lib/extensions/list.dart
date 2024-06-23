extension ListExtension on Iterable {
  List<T> separated<T>(T element, {List<int>? withoutIndexes}) {
    final temp = <T>[];
    for (var i = 0; i < length; i++) {
      temp.add(elementAt(i));
      if (i < length - 1 && !(withoutIndexes ?? []).contains(i)) {
        temp.add(element);
      }
    }
    return temp;
  }
}
