import 'package:bookly_app/core/errors/failrue.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type, Param>{
  Future<Either<Failure, Type>> call(Param param);
}