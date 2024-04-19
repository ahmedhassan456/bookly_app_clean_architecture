import 'package:bookly_app/core/errors/failrue.dart';
import 'package:dartz/dartz.dart';
import '../entities/book_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks({int pageNumber = 0});
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks({int pageNumber = 0});
}
