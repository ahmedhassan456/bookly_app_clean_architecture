import 'package:bloc/bloc.dart';

import '../../../domain/entities/book_entity.dart';
import '../../../domain/use_cases/fetch_newest_books_use_case.dart';
part 'newest_books_states.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(
    this.fechNewestBooksUseCase,
  ) : super(NewestBooksInitial());

  final FetchNewestBooksUseCase fechNewestBooksUseCase;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await fechNewestBooksUseCase.call();

    result.fold(
      (l) => emit(NewestBooksFailure(l.message)),
      (r) => emit(NewestBooksSuccess(r)),
    );
  }
}
