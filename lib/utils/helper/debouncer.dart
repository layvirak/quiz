import 'dart:async';

class Debouncer {
  Debouncer(this.duration);
  final Duration duration;
  Timer? _timer;

  void bounce(Function callback) {
    if (_timer != null) {
      _timer?.cancel();
    }
    _timer = Timer(duration, () {
      callback();
    });
  }
}
