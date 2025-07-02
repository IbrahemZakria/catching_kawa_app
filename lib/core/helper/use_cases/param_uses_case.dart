import 'package:catching_kawa_app/core/helper/error/failures.dart';
import 'package:dartz/dartz.dart';

abstract class UsesCase<T, param1, param2> {
  Future<Either<Failures, T>> call(param1 param1, param2 param2);
}
