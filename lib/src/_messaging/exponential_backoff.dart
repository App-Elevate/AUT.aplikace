import 'dart:async';
import 'dart:math';

/// Retries the future with exponential backoff.
///
/// [maxAttempts] specifies the maximum number of retry attempts.
///
/// [initialDelay] specifies the initial delay before retrying in milliseconds.
///
/// [maxDelay] specifies the maximum delay between retries in milliseconds.
///
/// [multiplier] specifies the multiplier for the backoff delay.
///
/// [ignoreError] ignores any errors coming from the future
///
/// [exitAfterFirstTryCallback]
/// If this option is filled (by passing a function) there are 2 possible outcomes:
///
/// 1. If the future succeeds first time, it will return the value and exit.
///
/// 2. If the future fails first time, it will return null and continue trying.
/// Once it succeeds, it will call this function.
///
/// To always call a callback once it's done try .then() on the future.
Future<T> retryWithExponentialBackoff<T>(
  Future<T> Function() task, {
  int maxAttempts = 5,
  int initialDelay = 1000,
  int randomDelay = 1000,
  int maxDelay = 120000,
  double multiplier = 2.0,

  /// ignores any errors coming from the future and returns null instead.
  bool ignoreError = false,

  /// If this option is filled (by passing a function) there are 3 possible outcomes:
  ///
  /// 1. If the future succeeds first time, it will return the value and exit.
  ///
  /// 2. If the future fails first time, it will return null and continue trying.
  /// Once it succeeds, it will call this function.
  ///
  /// To always call a callback once it's done try .then() on the future.
  Function(T)? exitAfterFirstTryCallback,

  /// If true, the future will retry infinitely
  bool infinite = false,
}) async {
  assert(randomDelay >= 0, 'randomDelay must be greater or equal to 0');
  int attempt = 0;
  int delay = initialDelay;
  final random = Random();

  while (true) {
    attempt++;
    try {
      return await task();
    } catch (e) {
      if (exitAfterFirstTryCallback != null) {
        retryWithExponentialBackoff(
          task,
          maxAttempts: maxAttempts - 1,
          initialDelay: delay,
          multiplier: multiplier,
          ignoreError: true,
          infinite: infinite,
          maxDelay: maxDelay,
        ).then((value) => exitAfterFirstTryCallback(value));
      }

      if (attempt >= maxAttempts && !infinite) {
        break;
      }
      await Future.delayed(Duration(milliseconds: delay + (randomDelay == 0 ? 0 : random.nextInt(randomDelay))));
      delay = min((delay * multiplier).toInt(), maxDelay);
    }
  }
  if (ignoreError) return Future.value(null);
  return Future.error('Failed after $maxAttempts attempts');
}
