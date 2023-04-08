part of dart_utils;

extension IntListExtension on List<int> {
  int sum() {
    var value = 0;

    for (var i = 0; i < length; i++) {
      value += this[i];
    }

    return value;
  }

  int avarage() {
    return sum() ~/ length;
  }
}

extension DoubleListExtension on List<double> {
  double sum() {
    var value = 0.0;

    for (var i = 0; i < length; i++) {
      value += this[i];
    }

    return value;
  }

  double avarage() {
    return sum() / length;
  }
}

extension NumListExtension on List<num> {
  num sum() {
    var value = 0.0;

    for (var i = 0; i < length; i++) {
      value += this[i];
    }

    return value;
  }

  num avarage() {
    return sum() / length;
  }
}

extension ListExtension<T> on List<T> {
  void addOther(List<T> other) {
    for (var i = 0; i < other.length; i++) {
      add(other[i]);
    }
  }

  T? firstWhereOrNull(
    bool Function(T) test, {
    T Function()? orElse,
  }) {
    for (var i = 0; i < length; i++) {
      if (test(this[i])) {
        return this[i];
      }
    }

    return orElse?.call();
  }
}
