import 'package:dartz/dartz.dart';

abstract class Usecase<T, Params> {
  Future<Either<Failure, T>> call(Params params);
}

class Failure {
  final String message;

  Failure(this.message);
}
