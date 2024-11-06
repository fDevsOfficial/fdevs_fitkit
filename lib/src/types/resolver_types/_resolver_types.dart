class Either<L, R> {
  final L? left;
  final R? right;
  const Either._({this.left, this.right});

  factory Either.success(R value) => Either._(right: value);
  factory Either.failure(L value) => Either._(left: value);

  bool get isSuccess => right != null;
  bool get isFailure => left != null;

  T resolve<T>({
    T Function(L value)? onFailure,
    T Function(R value)? onSuccess,
    T Function()? orElse,
  }) {
    if (isFailure) {
      if (onFailure != null) {
        return onFailure(left as L);
      } else if (orElse != null) {
        return orElse();
      } else {
        throw Exception('Unhandled failure case.');
      }
    } else if (isSuccess) {
      if (onSuccess != null) {
        return onSuccess(right as R);
      } else if (orElse != null) {
        return orElse();
      } else {
        throw Exception('Unhandled success case.');
      }
    }

    throw Exception(
      'Invalid state: Either should always have a success or failure value.',
    );
  }
}
