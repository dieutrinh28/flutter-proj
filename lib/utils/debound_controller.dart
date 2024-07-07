import 'dart:async';

class DebounceController<T> {
  final Duration duration;
  void Function(T value) onValue;

  DebounceController({
    this.duration = _defaultDebounceTime,
    required this.onValue,
  });

  static const _defaultDebounceTime = Duration(milliseconds: 250);
  Timer? _timer;

  void debounce(T val) {
    _timer?.cancel();
    _timer = Timer(duration, () => onValue(val));
  }

  void dispose() {
    _timer?.cancel();
    _timer = null;
  }
}
