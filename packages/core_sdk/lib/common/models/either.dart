part of 'models.dart';

class Left<L, R> extends Either<L, R> {
  Left(L data) : super._(data);
}

class Right<L, R> extends Either<L, R> {
  Right(R data) : super._(data);
}

class Either<L, R> {
  final dynamic data;

  Either._(this.data);

  R getOrElse(R Function() callback) {
    if (data.runtimeType == R) {
      return data as R;
    }
    return callback();
  }

  bool isLeft() => data.runtimeType == Left;
  bool isRight() => data.runtimeType == Right;
  Either<R, L> swap() {
    if (data.runtimeType == L) {
      return Right((data as L));
    }
    return Left((data as R));
  }

  FutureOr<T> fold<T>(
    FutureOr<T> Function(L) onLeft,
    FutureOr<T> Function(R) onRight,
  ) {
    if (data.runtimeType == Left) {
      return onLeft((data as L));
    }
    return onRight((data as R));
  }
}
