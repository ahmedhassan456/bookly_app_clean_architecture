import 'package:bookly_app/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failrue.dart';
import '../entities/book_entity.dart';

class FetchFeaturedBooksUseCase {
  final HomeRepo homeRepo;
  FetchFeaturedBooksUseCase({required this.homeRepo});

  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks () 
  {
    return homeRepo.fetchFeaturedBooks();
  }
}