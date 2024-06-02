import 'package:dartz/dartz.dart';

abstract class Usecase<T, Params> {
  Future<Either<Failure, T>> call(Params params);
}

// This can be more specific, but this case was enough
class Failure {
  final String message;

  Failure(this.message);
}
