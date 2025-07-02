import 'package:catching_kawa_app/core/helper/error/failures.dart';
import 'package:dartz/dartz.dart';

abstract class UsesCase<T> {
  Future<Either<Failures, T>> call();
}
