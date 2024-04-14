part of 'newesr_books_cubit.dart';

abstract class FetchNewestBooksState {}

final class FetchNewestBooksInitial extends FetchNewestBooksState {}

final class FetchNewestBooksLoading extends FetchNewestBooksState {}
final class FetchNewestBooksSuccess extends FetchNewestBooksState {
  final List<BookEntity> books;
  FetchNewestBooksSuccess(this.books);
}
final class FetchNewestBooksFailure extends FetchNewestBooksState {
  final String message;
  FetchNewestBooksFailure(this.message);
}
