import 'package:bloc/bloc.dart';

import '../../../domain/entities/book_entity.dart';
import '../../../domain/use_cases/fetch_newest_books_use_case.dart';
part 'newest_books_states.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(
    this.fechNewestBooksUseCase,
  ) : super(NewestBooksInitial());

  final FetchNewestBooksUseCase fechNewestBooksUseCase;

  Future<void> fetchNewestBooks({int pageNumber = 0}) async {
    if (pageNumber == 0) {
      emit(NewestBooksLoading());
    } else {
      emit(NewestBooksPaginationLoading());
    }

    var result = await fechNewestBooksUseCase.call(pageNumber: pageNumber);

    result.fold(
      (l) => () {
        if (pageNumber == 0) {
          emit(NewestBooksFailure(l.message));
        } else {
          emit(NewestBooksPaginationFailure(l.message));
        }
      },
      (r) => emit(NewestBooksSuccess(r)),
    );
  }
}
