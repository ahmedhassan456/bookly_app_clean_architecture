import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
part 'featured_books_states.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  final FetchFeaturedBooksUseCase fetchFeaturedBooksUseCase;
  FeaturedBooksCubit(
    this.fetchFeaturedBooksUseCase,
  ) : super(FeaturedBooksInitial());

  Future<void> fetchFeaturedBooks({int pageNumber = 0}) async {
    if (pageNumber == 0) {
      emit(FeaturedBooksLoading());
    } else {
      emit(FeaturedBooksPaginationLoading());
    }
    var result = await fetchFeaturedBooksUseCase.call(pageNumber: pageNumber);

    result.fold(
      (l) => () {
        if (pageNumber == 0) {
          emit(FeaturedBooksFailure(l.message));
        } else {
          emit(FeaturedBooksPaginationFailure(l.message));
        }
      },
      (r) => emit(FeaturedBooksSuccess(r)),
    );
  }
}
