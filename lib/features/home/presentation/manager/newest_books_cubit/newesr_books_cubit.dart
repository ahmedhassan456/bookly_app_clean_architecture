import 'package:bloc/bloc.dart';

import '../../../domain/entities/book_entity.dart';
import '../../../domain/use_cases/fetch_newest_books_use_case.dart';

part 'newest_books_states.dart';

class FetchNewestBooksCubit extends Cubit<FetchNewestBooksState> {
  FetchNewestBooksCubit(
    this.fetchNewestBooksUseCase,
  ) : super(FetchNewestBooksInitial());

  final FetchNewestBooksUseCase fetchNewestBooksUseCase;

  Future<void> fetchNewestBooks() async {
    emit(FetchNewestBooksLoading());
    var result = await fetchNewestBooksUseCase.call();

    result.fold(
      (l) => emit(FetchNewestBooksFailure(l.message)),
      (r) => emit(FetchNewestBooksSuccess(r)),
    );
  }
}
